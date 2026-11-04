<?php
// Simple contact form handler. Requires PHP hosting with mail() configured.
header('Content-Type: application/json');
$to = 'invest@surewinefund.com';

if ($_SERVER['REQUEST_METHOD'] !== 'POST') { http_response_code(405); echo json_encode(['ok'=>false]); exit; }
if (!empty($_POST['website'])) { echo json_encode(['ok'=>true]); exit; } // honeypot: bots fill this

$name    = trim(strip_tags($_POST['name'] ?? ''));
$email   = trim($_POST['email'] ?? '');
$message = trim(strip_tags($_POST['message'] ?? ''));
$message = mb_substr($message, 0, 180);

if ($name === '' || !filter_var($email, FILTER_VALIDATE_EMAIL)) {
  http_response_code(400);
  echo json_encode(['ok'=>false,'error'=>'Enter your full name and a valid email address.']); exit;
}

$name  = str_replace(["\r","\n"], ' ', $name);
$body  = "Name: $name\nEmail: $email\n\nMessage:\n$message\n";
$headers = "From: no-reply@surewinefund.com\r\nReply-To: $email\r\nContent-Type: text/plain; charset=UTF-8";
$sent = mail($to, 'Fund enquiry from ' . $name, $body, $headers);

echo json_encode($sent ? ['ok'=>true] : ['ok'=>false,'error'=>'Could not send. Email invest@surewinefund.com instead.']);

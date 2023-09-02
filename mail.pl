#!/usr/bin/perl

use strict;
use warnings;
use Net::SMTP;

# Define email parameters
my $tolist = 'receiveremailID.com';
my $fromlist = 'senderemailID.com';
my $subject = 'COSTUMIZE IT';

# Define HTML-formatted message
my $message = generate_html_message();

# SMTP Server Settings
my $smtp_server = 'smtp.gmail.com';
my $smtp_port = 587;
my $smtp_username = 'senderemailID.com';
my $smtp_password = '';

# Create and configure SMTP object
my $smtp = create_smtp_object($smtp_server, $smtp_port);

# Authenticate and send email
send_email($smtp, $fromlist, $tolist, $subject, $message);

print "Email sent successfully\n";

sub generate_html_message {
    return <<END_OF_MESSAGE;
<html>
<head>
  <title>Important Announcement</title>
</head>
<body>
  <h1 style="color: #0088cc;"><YOUR TOPIC></h1>
  <p>Hello there,</p>
  <p>We are excited to announce a special event coming up!</p>
  <p>Details:</p>
  <ul>
    <li>Date: September 15, 2023</li>
    <li>Time: 2:00 PM - 5:00 PM</li>
    <li>Location: About </li>
  </ul>
  <p>This event ABOUT writing how to automate email.</p>
  <p>Please make sure you have smtp connection!</p>
  <p>Best regards,</p>
  <p>HAPPY CODER</p>
</body>
</html>
END_OF_MESSAGE
}

sub create_smtp_object {
    my ($server, $port) = @_;
    my $smtp = Net::SMTP->new(
        $server,
        Port    => $port,
        Hello   => 'localhost',
        Timeout => 30,
    ) or die "Could not connect to SMTP server";
    
    $smtp->starttls() or die "StartTLS failed";
    $smtp->auth($smtp_username, $smtp_password) or die "Authentication failed";

    return $smtp;
}

sub send_email {
    my ($smtp, $from, $to, $subj, $msg) = @_;

    $smtp->mail($from);
    $smtp->to($to);
    $smtp->data();
    $smtp->datasend("To: $to\n");
    $smtp->datasend("From: $from\n");
    $smtp->datasend("Subject: $subj\n");
    $smtp->datasend("Content-Type: text/html; charset=utf-8\n");  # Set HTML content type
    $smtp->datasend("\n$msg\n");
    $smtp->dataend();

    $smtp->quit;
}

# automate_email_using_smtp_perl

Certainly, here's a sample README file you can use to provide information about your Perl script and how to use it. You can create a file named `README.md` in your Git repository and populate it with the following content:

```markdown
![image](https://github.com/karthi007dir/automate_email_using_smtp_perl/assets/78067075/6a10b85f-49b4-4335-b43d-84fc8a88dba5)

you should generate APP PASSWORD prior to initiating the process so that you get a app generated password not the email password which won't work for security enhancement was enriched by google.


# Perl Email Sender

This Perl script allows you to send HTML-formatted emails using SMTP. It's a simple example of sending an email announcement for a special event.

## Prerequisites

Before using this script, make sure you have the following prerequisites installed:

- Perl (5.10.1 or higher)
- Net::SMTP Perl module (you can install it using CPAN or your system's package manager)

## Configuration

You need to configure the script with your own email settings. Open the script in a text editor and modify the following variables:

- `$tolist`: The recipient's email address.
- `$fromlist`: Your email address (the sender's address).
- `$smtp_server`: Your SMTP server (e.g., 'smtp.gmail.com').
- `$smtp_port`: The SMTP server's port (e.g., 587 for Gmail).
- `$smtp_username`: Your SMTP server username (usually your email address).
- `$smtp_password`: Your SMTP server password.

## Usage

1. Clone this Git repository to your local machine.

2. Modify the configuration variables in the Perl script as described in the "Configuration" section above.

3. Run the Perl script using the command line:

   ```
   perl send_email.pl
   ```

   Replace `send_email.pl` with the name of your Perl script if it's different.

4. If everything is configured correctly, the script will send the email, and you will see the message "Email sent successfully" printed in the terminal.

## Customizing the Email Content

You can customize the email content by modifying the `generate_html_message` subroutine in the Perl script. This subroutine generates the HTML-formatted message. You can change the message's subject, body, and formatting as needed.

## License

This script is provided under the MIT License. You can find the full license text in the `LICENSE` file.

## Contact

If you have any questions or need assistance, feel free to contact [Your Name] at [your.email@example.com].

Happy emailing!
```

Replace `[Your Name]` and `[your.email@example.com]` with your own contact information.

This README file provides users with an overview of your Perl script, its prerequisites, configuration instructions, usage guidelines, and licensing information. It also encourages them to contact you if they have any questions or need assistance.

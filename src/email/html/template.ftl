<#macro emailLayout>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">
    <style>
        /* Base styles */
        body {
            font-family: 'Roboto', 'Helvetica Neue', Helvetica, Arial, sans-serif;
            line-height: 1.6;
            margin: 0;
            padding: 0;
            -webkit-font-smoothing: antialiased;
            -moz-osx-font-smoothing: grayscale;
            background-color: #f5f5f5;
        }

        /* Container styles */
        .email-container {
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
            background-color: #ffffff;
        }

        /* Header styles */
        .header {
            text-align: center;
            padding: 20px 0;
            border-bottom: 1px solid #eaeaea;
        }

        .header img {
            max-width: 200px;
            height: auto;
        }

        /* Content styles */
        .content {
            padding: 30px 20px;
            background-color: #ffffff;
        }

        /* Button styles */
        .button {
            display: inline-block;
            padding: 12px 24px;
            background-color: #3f4373;
            color: #ffffff !important;
            text-decoration: none;
            border-radius: 4px;
            margin: 20px 0;
            font-weight: 500;
        }

        .button:hover {
            background-color: #31355a;
        }

        /* Footer styles */
        .footer {
            margin-top: 30px;
            padding-top: 20px;
            border-top: 1px solid #eaeaea;
            text-align: center;
            color: #666666;
            font-size: 12px;
        }

        /* Typography */
        h1, h2, h3 {
            color: #31355a;
            margin-bottom: 16px;
        }

        p {
            color: #333333;
            margin-bottom: 16px;
        }

        a {
            color: #3f4373;
            text-decoration: none;
        }

        .organization-info {
            margin-top: 24px;
            border-top: 1px solid #eaeaea;
            padding-top: 16px;
        }

        .organization-info strong {
            color: #31355a;
        }

        .organization-info em {
            color: #31355a;
            font-style: italic;
        }

        .organization-email {
            color: #2e7d32;
            text-decoration: underline;
        }

        @media only screen and (max-width: 600px) {
            .email-container {
                width: 100% !important;
                padding: 10px;
            }

            .content {
                padding: 20px 15px;
            }
        }
    </style>
</head>
<body>
    <div class="email-container">
        <div class="content">
            <#nested>

            <div class="organization-info">
                <p>
                    <strong>${msg("organizationName")} - </strong>
                    <em>${msg("organizationTagline")}</em><br/>
                    <a href="mailto:${msg('organizationEmail')}" class="organization-email">
                        ${msg("organizationEmail")}
                    </a>
                </p>
            </div>
        </div>

        <div class="footer">
            <p>
                © ${.now?string('yyyy')} ${msg("organizationName")}. All rights reserved.<br>
                This is an automated message, please do not reply.
            </p>
        </div>
    </div>
</body>
</html>
</#macro>

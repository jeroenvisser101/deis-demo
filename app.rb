require "cuba"

times_clicked = 0

Cuba.define do
  on get do
    times_clicked += 1
    res.write <<-HTML
      <!DOCTYPE html>
      <html lang="en">
      <head>
        <meta charset="UTF-8">
        <title>Deis Demo</title>
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0">
        <style>
          html {
            height: 100%;
          }
          body {
            height: 100%;
            display: flex;
            align-items: center;
            justify-content: center;
          }
          a {
            flex: none;
            color: white;
            background-color: #E2674A;
            padding: 24px 36px;
            display: inline-block;
            border-radius: 3px;
            font-family: Arial;
          }
        </style>
      </head>
      <body>
        <a href="/">Y'all clicked this button #{times_clicked} times</a>
      </body>
      </html>
    HTML
  end
end

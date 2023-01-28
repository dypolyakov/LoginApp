# LoginApp

Приложение с двумя экранами.

Первый экран LoginViewController отвечает за авторизацию пользователя.

<img width="514" alt="image" src="https://user-images.githubusercontent.com/114927709/215288110-a7b6763a-bfb8-474f-a0d3-de986d3a7cf2.png">

При нажатии на кнопки "Forgot User Name?" и "Forgot Password?" отображаются алерты подсказками.

<img width="514" alt="image" src="https://user-images.githubusercontent.com/114927709/215288157-1b0d2583-aacc-4f18-aa31-23d728f84126.png">


На втором экране WelcomeViewController отображаются приветствие (имя пользователя) и кнопка логаута.

<img width="514" alt="image" src="https://user-images.githubusercontent.com/114927709/215288172-c37955c9-8a55-426a-99a6-de333ae70cd8.png">

Внизу отображается TabBarController с двумя элементами.

При нажатии на "About" отображается информация о пользователе.

<img width="514" alt="image" src="https://user-images.githubusercontent.com/114927709/215288259-4c252965-8770-4cd4-a76a-b034aeed0b08.png">

Имя пользователя на второй экран передается при переходе с экрана авторизации. Для этого реализован метод prepare.

При возврате на экран логина данные в текстовых полях (логин и пароль) очищаются. Для этого используется unwind сегвей.

При вводе имени пользователя отключена автокоррекция и предиктивный ввод.

При вводе пароля, вводимые символы скрываются.

Клавиатура скрывается при тапе по экрану.

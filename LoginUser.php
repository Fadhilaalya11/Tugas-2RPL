<?php
session_start();

function checkLogin($email, $password) {
    // Simulate checking credentials
    return $email === 'user@example.com' && $password === 'password123';
}

function doLogout() {
    session_destroy();
    echo "You have been logged out.";
}

$isUserLoggedIn = false;

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $email = $_POST['email'] ?? '';
    $password = $_POST['password'] ?? '';

    if (checkLogin($email, $password)) {
        $_SESSION['email'] = $email;
        $_SESSION['user_login_status'] = 1;
        $isUserLoggedIn = true;
        echo "Login successful! Welcome, " . htmlspecialchars($email);
    } else {
        echo "Login failed. Please try again.";
    }
}

if (isset($_GET['logout'])) {
    doLogout();
    header("Location: login.php");
    exit;
}
?>
<!DOCTYPE html>
<html>
<head>
    <title>Login Page</title>
</head>
<body>
    <?php if (!$isUserLoggedIn): ?>
        <form action="" method="post">
            <label for="email">Email:</label>
            <input type="email" name="email" required>
            <br>
            <label for="password">Password:</label>
            <input type="password" name="password" required>
            <br>
            <button type="submit">Login</button>
        </form>
    <?php else: ?>
        <form action="?logout=true" method="get">
            <button type="submit">Logout</button>
        </form>
    <?php endif; ?>
</body>
</html>

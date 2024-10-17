#include <stdio.h>
#include <string.h>

// Function to simulate checking user credentials in the database
int checkLogin(const char *email, const char *password) {
    if (strcmp(email, "user@example.com") == 0 && strcmp(password, "password123") == 0) {
        return 1;
    }
    return 0;
}

// Procedure to perform logout
void doLogout() {
    printf("You have been logged out.\n");
}

int main() {
    char email[50];
    char password[50];
    int isUserLoggedIn = 0;

    printf("Enter your email: ");
    scanf("%s", email);
    printf("Enter your password: ");
    scanf("%s", password);

    if (checkLogin(email, password)) {
        isUserLoggedIn = 1;
        printf("Login successful! Welcome, %s\n", email);
    } else {
        printf("Login failed. Please try again.\n");
    }

    // Simulate logout
    if (isUserLoggedIn) {
        printf("Do you want to logout? (yes/no): ");
        scanf("%s", password);
        if (strcmp(password, "yes") == 0) {
            doLogout();
        }
    }

    return 0;
}

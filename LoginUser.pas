program LoginUser;

uses
  SysUtils;

var
  email, password: string;
  isUserLoggedIn: boolean;

// Function to simulate checking user credentials in the database
function checkLogin(email, password: string): boolean;
begin
  if (email = 'user@example.com') and (password = 'password123') then
    Result := true
  else
    Result := false;
end;

// Procedure to perform logout
procedure doLogout;
begin
  isUserLoggedIn := false;
  Writeln('You have been logged out.');
end;

begin
  isUserLoggedIn := false;
  Writeln('Enter your email: ');
  Readln(email);
  Writeln('Enter your password: ');
  Readln(password);

  if checkLogin(email, password) then
  begin
    isUserLoggedIn := true;
    Writeln('Login successful! Welcome, ', email);
  end
  else
    Writeln('Login failed. Please try again.');

  // Simulate logout
  Writeln('Do you want to logout? (yes/no)');
  Readln(password);
  if password = 'yes' then
    doLogout;
end.

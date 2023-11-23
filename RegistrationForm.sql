// Assuming you have a users table with columns id, fullName, email, and phoneNumber

$stmt = $conn->prepare("INSERT INTO users (fullName, email, phoneNumber) VALUES (:fullName, :email, :phoneNumber)");

// Bind parameters
$stmt->bindParam(':fullName', $fullName);
$stmt->bindParam(':email', $email);
$stmt->bindParam(':phoneNumber', $phoneNumber);

// Set parameters and execute
$fullName = "John Doe";
$email = "john.doe@example.com";
$phoneNumber = "1234567890";

$stmt->execute();

echo "Record inserted successfully";

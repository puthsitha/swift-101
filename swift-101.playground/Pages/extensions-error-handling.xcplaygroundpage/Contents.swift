import Foundation

// extension allows you to add new methods, computed properties, initializers, protocol conformances, etc.

extension String {
    func reversedText() -> String {
        return String(self.reversed())
    }
}

let text = "Puthsitha"
print(text.reversedText())

extension Int {
    var isEven: Bool {
        return self % 2 == 0
    }
}

let number = 4
print(number.isEven)

// Error Handling

enum LoginError: Error {
    case emptyUsername
    case invalidPassword
}

func login(username: String, password: String) throws {
    if username.isEmpty {
        throw LoginError.emptyUsername
    }
    if password.count < 6 {
        throw LoginError.invalidPassword
    }
    
    print("Login successful")
}

do {
    try login(username: "Puthsitha", password: "123456")
} catch LoginError.emptyUsername {
    print("Username cannot be empty")
} catch LoginError.invalidPassword {
    print("Password must be at least 6 characters")
} catch {
    print("Unknown error occurred: \(error)")
}


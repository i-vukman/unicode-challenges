//In this challenge, you are provided with pseudocode and you should find and fix the vulnerability

function resetPassword(email) {
    const normalizedMail = normalizeCase(email);
    const isUserMail = getMailFromRepo(normalizedMail);

    if (isUserMail) {
        sendPasswordResetMail(email);
    }
}

function normalizeCase(input) {
    return input.toUpperCase();
}

function getMailFromRepo(email) {
    return ["MIKE@EXAMPLE.ORG"].find(e => e == email.toUpperCase());
}

function sendPasswordResetMail(email) {
    console.log("Reset email sent to: " + email);
}

resetPassword("mıke@example.org");

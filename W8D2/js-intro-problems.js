function madLib(verb, adj, noun) {
    console.log(`We shall ${verb.toUpperCase()} the ${adj.toUpperCase()} ${noun.toUpperCase()}`);
}

madLib('make', 'best', 'guac');

function isSubstring(str1, str2) {
    const sent = str1.split(" ");
    for (let i = 0; i < sent.length; i++) {
        if (sent[i] === str2) {
            return true;
        }
    }
    return false;
}


console.log(isSubstring("time to program", "time"))
// true

console.log(isSubstring("Jump for joy", "joys"))
// false


function fizzBuzz(array) {
    const result = [];
    for (let i = 0; i < array.length; i++) {
        if ((array[i] % 3 === 0 || array[i] % 5 === 0) && !(array[i] % 3 === 0 && array[i] % 5 === 0)) {
            result.push(array[i]);
        }
    }
    return result
}

console.log(fizzBuzz([3,5,15,21]))


function isPrime(num) {
    if (num < 2) {
        return false;
    }
    else {
        for (let i = 2; i < num; i++) {
            if (num % i === 0) {
                return false;
            }
        }
    }
    return true;
}

console.log(isPrime(2))
// true

console.log(isPrime(10))
// false

console.log(isPrime(15485863))
// true

console.log(isPrime(3548563))
// false

function sumOfNPrimes(num) {
    let sum = 0;
    let counter = 0;
    let primes = 0;
    while ( primes < num) {
        if (isPrime(counter) === true) {
            sum += counter;
            primes += 1;
        }
        counter += 1;
    }
    return sum;
}

console.log(sumOfNPrimes(0))
// 0

console.log(sumOfNPrimes(1))
// 2

console.log(sumOfNPrimes(4))
// 17



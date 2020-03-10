## Generate random male usernames for Active Directory

$male = randomNames(@(Get-Content C:\Users\1eps\Desktop\dev\generateUsers-master\generateUsers-master\mNames.txt))
$male
$feMale = randomNames(@(Get-Content C:\Users\1eps\Desktop\dev\generateUsers-master\generateUsers-master\fNames.txt))
$feMale

function randomNames($Array) { ## Generate random usernames for Active Directory
$Names = @($Array[0].split(' ')) ## Выделяю первую строку - массив с именами
$NamesCount = $Names.Count - 1 ## Переменная для конечного числа будущего рэндома, чтобы не править каждый раз при расширении словаря
$nRand = Get-Random (0..$NamesCount)## Генерирую рэндом коэффициент
$Name = $Names[$nRand] ##Переменная имени в зависимости от выбранного рэндомного числа

$FathersNames = @($Array[1].split(' ')) ## Выделяю вторую строку - массив с отчествами
$FathersNamesCount = $FathersNames.Count - 1 ## Переменная для конечного числа будущего рэндома, чтобы не править каждый раз при расширении словаря
$fRand = Get-Random (0..$FathersNamesCount)## Генерирую рэндом коэффициент
$FathersName = $FathersNames[$fRand] ##Переменная отчества в зависимости от выбранного рэндомного числа

$LastNames = @($Array[2].split(' ')) ## Выделяю третью строку - массив с фамилиями
$LastNamesCount = $LastNames.Count - 1 ## Переменная для конечного числа будущего рэндома, чтобы не править каждый раз при расширении словаря
$lRand = Get-Random (0..$LastNamesCount)## Генерирую рэндом коэффициент
$LastName = $LastNames[$lRand] ##Переменная отчества в зависимости от выбранного рэндомного числа

return $fio = $LastName + " " + $Name + " " + $FathersName ##создаю строку ФИО
}

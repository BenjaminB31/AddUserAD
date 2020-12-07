$users = Import-Csv -Delimiter ";" -Path "C:\Users\Administrateur.WIN-VIGS49SSAVO\Desktop\liste_eleves.csv"

foreach ($user in $users){
$pass= "Azerty!"
$name = $user.nom + " " + $user.prenom
$ou= "OU=" + $user.fonction + ",DC=GSB,DC=local"
$nom= $user.nom
$prenom= $user.prenom
$pseudo= $user.prenom + "." + $user.nom
try {
 New-ADUser -Name $name  -givenname $pseudo -Path $ou
            echo "Utilisateur ajouté : $name"    
        } 
catch{
            echo "utilisateur non ajouté : $name"
       }   
   }

#!/bin/bash
color='\e[96m' #cyan color
rose='\e[1;31m'
vertfonce='\e[0;32m'
orange='\e[0;33m'
bleuclair='\e[1;34m'
blanc='\e[1;37m'
BAR='##################################################'   # this is full bar, e.g. 50 chars

loader(){
  for i in {1..50}; do
    echo -ne "\r${BAR:0:$i}" # print $i chars of $BAR from 0 position
    sleep $1                # wait 100ms (.1 - slow velocity) or 10ms (.01 - false velocity) between "frames"
  done
echo ""                        # add a new line at the end
}

timer(){
    echo $SECONDS
}

# begin of  automatic install process
echo ""
echo -e "${color}\xf0\x9f\x98\xba\xf0\x9f\x98\x80 Hello $USER, The personalization steps procedure will begin... \xf0\x9f\x98\xba\xf0\x9f\x98\x80${vertfonce}"
echo ""
# loader fast velocity
loader .01;
# Always start from current folder
SECONDS="0"
cd ./
touch .env.local
echo -e "#PROJECT OPEN SOURCE UNDER CREATIVE COMMON LICENSE - CREATED BY RODOLPHE AUGUSTO

#For more info about this project, visit this address : https://github.com/rodolphe37/pwa-react-project

#                                                                                 ......
#                                                                           .',:looddddooc,.'''...
#                                                                        .':oxxkkO000Okxxkxodxxddol;'.
#                                                                     .',:odxxddddxkxdddddxddxddxkOOko:'.
#                                                                   'cddoodddddooddddddddddddddddxkOOkxdc'.
#                                                                 .:dxxddoolooooooolllodddddoooooooddddxxo;.
#                                                                .ldxdooodxkOOOOOkkxxdolloloodxxxxdoooodddl;.
#                                                               .lddoodxk0OOkxxoolllooolcccloooodxkkkdooodool'
#                                                              .cddook000kxddolcllxxxhelloxxxllccloxkOkdlodxo'
#                                                              ,ldook0OkkdddoclodxxxthexxddddddoolccoxkOkolddc.
#                                                             .:oook0OkddddocldddxxxxworldxxxxxxdddolcldxOOdldo,
#                                                             .;clx00kddddocldxxdxxxdxxdxxxxxddxxdxddocldxOOdlo:.
#                                                             .::ok0Oxddddllddxxxxxxxxxxddxxddxxxxxxddocldk0kolc.
#                                                             ':cokkkdddolldxdxxxxxdxxdxxxdddxxddxxxxxdlcoxOOol;.
#                                                            .;c:lxkddolc:clllllooddxxxddxxddxxxdxxxxxdoclxOOoc,
#                                                            .;loxxdlllllllllllllodxxxxdxxdlclloddxxxxxdclxOOo;.
#                                                          .'cdkkdlloooooooooddxxdxxxxdxxdddolcccclodxxdllk0kl,.
#                                                         .:dkkolloddlc::;;;:lodddodxdxdodxxxxxddolllodoldk0dc,
#                                                        .cxkdc:ldxdoldxdc,.'colooloxxdolddddooooddddoollxOkl:.
#                                                        ,dxdc::oxdddodxdlc:cdxodoodxxdlodoll:;;;:loddlldOOo:'
#                                                       .;dxlc:cdxxxdddxxxddddddddddxxddddodl;'.;llcolldkOxc;.
#                                                        'odlc:ldxxxxddxxxxxxxxxxxxxdxxxxdddolc:okdllloxOkl;;.
#                                                        .cdoc;lxxxxxxxxxxxxdxxxxxxxdxxxxdxxxxddddoolldkOdc:,.
#                                                         ,loc,lkxdxdxxxxxxxdooxxxxdxxxxxxddxxxxxxddlldxxoc;.
#                                                         .coc;lkxxxxxxdddxxdlloodxxxxddodxxxdxxdxxdlldxoc:.
#                                                         .:ol;lkxxxxxxxxxdddolllllllllcloxxxxxxxdxxoclddc,.
#                                                         .;ol;lxxdxxxddddoooooollcclllloddxxxdxxdddoc:ldl:.
#                                                         .;oc;cxddddoooooooooooooooooooooddxxxxxddoc;:clol,
#                                                         .:lc;cddoooolcccoxkxdllllllloooooddxxddool;,',coo;.
#                 ..                   ...                'cl:,cddoooooolcxKNWNX0kkOkkxdooooodxdolc:,. .:ol;.
#                ,,. ..       ....    .:oo;.             .;c;..:odoooooddoox0XXNWWMMWWXOlclloooolc;;.  .clc'
#               ':. .,.      .;odc'   .,lxo;.           .;;'.  ,cddooooooddoooddxkkOOkxdoooooolcc;,.  .:ll,.
#              .:' .,.       .,cdxl,.  .:oxo,.         .'..    .,codooooooddddoooooooodddoooollc;,.  ':lc,
#              .;. ,.         .,cdxo;. .,cdxl'                  .':odoooooooooooooodddoooooollc;'. .;cc;.
#              .,..,.    .'..  .,cdxdc. .;oxdc.          ...      .;coooooooooooooooooooooolc;,.  ':c;.
#              .;. ..   .:loc'. .,cdxxc..'cdxd:.       .;lol;.     .,;looooooooooooooooolc:;'.   ':;.
#               ''       .:odo:. .,cdxdc,':oxkd;.     .cdxxo;.     .;:;;;:clooooooooolc:;,,.    .;'
#                .        .;lddo:..':oxdc;;ldxxo;.   .,lxxo:.      'coolc:::::::::::;;;;::.     ''
#                          ..:oddo:',coxdlclddxxd:.  .;lddl,      .,ldxdddddollccccllooll:'.    .
#                            .,coxdl::oxddddxxdxxd:. .lxxdl.    ...,lxxxxdxxdxxxxxxxxxddoc'...
#                              .,codoodxddddxxddxxdc,;dkxdl'   ....;oxxdxddxxxxxxxxxxxxxdl,....
#                      ',,'...  ..;odxxxxdloddlodxxdloxxxdc'.......cdxddxxddxxxxxxxxxxxddl;......
#                     .;clollcc:;:coxdxdoccoxoclxxxdxxdxxd:........,lddddxxxxxxxxxxxxdddl;'.............
#                       ..';:cloddddxdxdocldxxocoxxdxxxxddl,.......'.';lodxxdxxxxxxdddoc;'..''...............
#                           ..',::codxdoodxxxdcldxxxxxxdo:.......''''.'',:cloodoolc;,''..'''''...'''''''''....
#                                ..;lodxddolodoldxxxxxxdc,.......'''''''....';cl:'.....''''''...'''''''''''''...
#                                  .';codddooddddxxdddoc,........'''''.....'..,:,.'''....'''...'''''''''''''''...
#                                 .....,:oddxddddddddo:...........''..............'''''....'...''''''''''''''''...
#                                ......'',:cllllodxxdc'.....................''...''''''''.....''''''''''''''''''...
#                               .....,cc;cllllloddxdl'....................''.....''''''''''''''''''''''''''''''''...
#                               ....,cc:ldxxxxxxxdxo,............................'''''''''''''''''''''''''''''''''..
#                                .',::codxxxxxxxdxo;............'''''''''..'''''.''''''''''''''''''''''''....''''''..
#                                .,;:ldxxxxxxxxxxdc'.........''''''''''''''''''''''''''''''''''''''''''''.....'''''...
#                              ..,;codxxxxxxxxxxdo;.........''''''''''''''''''''''''''''''''''''''''''''.......'''''..
#                             .',codxxdxxxxxxxxxdc'........'''''''''''''''''''''''''''''''''''''''''''''.........'''...
#                            .,:odxxxxxxxxxdxxddo;.........''''''''''''''''''''''''''''''''''''''''''''................
#                           .,cdxxxxxxxxxxxxxxddc'........'''''''''''''''''''''''''''''''''''''''''''''............''.
#                           'coxxdxxxxxxxxxxxddo:.........''''''''''''''''''''''''''''''''''''''''''''......'',,;clol'
#                          .,cdxxdxxxxxxxxxxddol;.........'''''''''''''''''''''''''''''''''''''''''''....,ccllooddxxo;.
#                           ':odxxxxxxxxxxxddoo:'  ........'''''''''''''''''''''''''''''''''''''''''....'coooooddxxxd:.
#                           .;codxxxxxxxxxddooc,.    ......''''''''''''''''''''''''''''''''''''''''.....;looooodxdolc,.
#                            ':lodddxxxxdddolc;.      ......'''''''''''''''''''''''''''''''''''''......;cccccccc:;'..
#                            .,:loooddddoolc:'.          ....'''''''''''''''''''''''''''''''''''................
#                             .,:looooolc:,..              ....''''''''''''''''''''''''''''''''.....
#                              .';:ccc:;'.                   ...'''''''''''''''''''''''''''''.....
#                                 .  ..                        ....''''''''''''''''''''''''.....
#                                                                ....'''''''''''''''''''''...
#                                                                  ..'..''''''''''.'''....
#                                                                    ........''......

#FULL PERSONNALISATION OF THE APPLICATION HERE!!!
 \n" >> .env.local
echo -e "${orange} HOME PAGE & REPOSITORIES INFO ${vertfonce}"
echo -e "#HOME PAGE & REPOSITORIES INFO\n" >> .env.local
# loader fast velocity
loader .01;
echo ""
echo -e "${color} what name you have on Github ${orange}(your Github username) ? ${blanc}"
read name
echo -e "${vertfonce}"
echo -e "REACT_APP_USERNAME=${name}\n" >> .env.local
# loader fast velocity
loader .01;
echo -e "${color} OK ${vertfonce}"
# loader fast velocity
loader .01;

echo -e "${color} enter your profile picture url ${orange}(without https:// or https://www)! ${blanc}"
read address
echo -e "${vertfonce}"
echo -e "REACT_APP_PICTURE_USER=${address}\n" >> .env.local
# loader fast velocity
loader .01;
echo -e "${color} OK ${vertfonce}"
# loader fast velocity
loader .01;

echo -e "${orange} ABOUT PAGE ${vertfonce}"
echo -e "#ABOUT PAGE\n" >> .env.local
# loader fast velocity
loader .01;
echo ""
echo -e "${color} Copy the link to your portfolio logo or any other links picture in image hosting solutions like imgur or other ${orange}(without https:// or https://www)! ${blanc}"
read avatar
echo -e "${vertfonce}"
echo -e "REACT_APP_AVATAR_PICTURE=${avatar}\n" >> .env.local
# loader fast velocity
loader .01;
echo -e "${color} OK ${vertfonce}"
# loader fast velocity
loader .01;

echo -e "${orange} PORTFOLIO LINK ${vertfonce}"
echo -e "#PORTFOLIO LINK\n" >> .env.local
# loader fast velocity
loader .01;
echo ""
echo -e "${color} enter your portfolio name only ${orange}(Portfolio address is fetching direct from your github profile) ${color} if you leave the name blank, then no link appears on the screen! ${blanc}"
read portfolio
echo -e "${vertfonce}"
echo -e "REACT_APP_PORTFOLIO_NAME=${portfolio}\n" >> .env.local
# loader fast velocity
loader .01;
echo -e "${color} OK ${vertfonce}"
# loader fast velocity
loader .01;

echo -e "${orange} LANGUAGES & TOOLS SECTION ${vertfonce}"
echo -e "#LANGUAGES & TOOLS SECTION\n" >> .env.local
# loader fast velocity
loader .01;
echo ""
echo -e "${color} enter images url of tools & languages you are used ${orange}(Only 8 images is enough, images 9 to 16 are optional ) (without https:// or https://www)! ${vertfonce}"
# loader fast velocity
loader .01;
echo ""
echo -e "${color} enter images1 url of tools & languages you are used ${orange}(without https:// or https://www)! ${blanc}"
read link1
echo -e "${vertfonce}"
echo -e "REACT_APP_PICTURE_1=${link1}\n" >> .env.local
# loader fast velocity
loader .01;
echo -e "${color} OK ${vertfonce}"
# loader fast velocity
loader .01;
echo ""
echo -e "${color} enter images2 url of tools & languages you are used ${orange}(without https:// or https://www)! ${blanc}"
read link2
echo -e "${vertfonce}"
echo -e "REACT_APP_PICTURE_2=${link2}\n" >> .env.local
# loader fast velocity
loader .01;
echo -e "${color} OK ${vertfonce}"
# loader fast velocity
loader .01;
echo ""
echo -e "${color} enter images3 url of tools & languages you are used ${orange}(without https:// or https://www)! ${blanc}"
read link3
echo -e "${vertfonce}"
echo -e "REACT_APP_PICTURE_3=${link3}\n" >> .env.local
# loader fast velocity
loader .01;
echo -e "${color} OK ${vertfonce}"
# loader fast velocity
loader .01;
echo ""
echo -e "${color} enter images4 url of tools & languages you are used ${orange}(without https:// or https://www)! ${blanc}"
read link4
echo -e "${vertfonce}"
echo -e "REACT_APP_PICTURE_4=${link4}\n" >> .env.local
# loader fast velocity
loader .01;
echo -e "${color} OK ${vertfonce}"
# loader fast velocity
loader .01;
echo ""
echo -e "${color} enter images5 url of tools & languages you are used ${orange}(without https:// or https://www)! ${blanc}"
read link5
echo -e "${vertfonce}"
echo -e "REACT_APP_PICTURE_5=${link5}\n" >> .env.local
# loader fast velocity
loader .01;
echo -e "${color} OK ${vertfonce}"
# loader fast velocity
loader .01;
echo ""
echo -e "${color} enter images6 url of tools & languages you are used ${orange}(without https:// or https://www)! ${blanc}"
read link6
echo -e "${vertfonce}"
echo -e "REACT_APP_PICTURE_6=${link6}\n" >> .env.local
# loader fast velocity
loader .01;
echo -e "${color} OK ${vertfonce}"
# loader fast velocity
loader .01;
echo ""
echo -e "${color} enter images7 url of tools & languages you are used ${orange}(without https:// or https://www)! ${blanc}"
read link7
echo -e "${vertfonce}"
echo -e "REACT_APP_PICTURE_7=${link7}\n" >> .env.local
# loader fast velocity
loader .01;
echo -e "${color} OK ${vertfonce}"
# loader fast velocity
loader .01;
echo ""
echo -e "${color} enter images8 url of tools & languages you are used ${orange}(without https:// or https://www)! ${blanc}"
read link8
echo -e "${vertfonce}"
echo -e "REACT_APP_PICTURE_8=${link8}\n" >> .env.local
# loader fast velocity
loader .01;
echo -e "${color} OK ${vertfonce}"
# loader fast velocity
loader .01;
while true; do
    echo ""
    read -p " Do you want more picture tools & languages?" yn
    case $yn in
        [Yy]* ) echo -e "${color} enter images9 url of tools & languages you are used ${orange}(without https:// or https://www)! ${blanc}"
                read link9
                echo -e "${vertfonce}"
                echo -e "REACT_APP_PICTURE_9=${link9}\n" >> .env.local
                # loader fast velocity
                loader .01;
                echo -e "${color} OK ${vertfonce}"
                # loader fast velocity
                loader .01;
                echo ""
                echo -e "${color} enter images10 url of tools & languages you are used ${orange}(without https:// or https://www)! ${blanc}"
                read link10
                echo -e "${vertfonce}"
                echo -e "REACT_APP_PICTURE_10=${link10}\n" >> .env.local
                # loader fast velocity
                loader .01;
                echo -e "${color} OK ${vertfonce}"
                # loader fast velocity
                loader .01;
                echo ""
                echo -e "${color} enter images11 url of tools & languages you are used ${orange}(without https:// or https://www)! ${blanc}"
                read link11
                echo -e "${vertfonce}"
                echo -e "REACT_APP_PICTURE_11=${link11}\n" >> .env.local
                # loader fast velocity
                loader .01;
                echo -e "${color} OK ${vertfonce}"
                # loader fast velocity
                loader .01;
                echo ""
                echo -e "${color} enter images12 url of tools & languages you are used ${orange}(without https:// or https://www)! ${blanc}"
                read link12
                echo -e "${vertfonce}"
                echo -e "REACT_APP_PICTURE_12=${link12}\n" >> .env.local
                # loader fast velocity
                loader .01;
                echo -e "${color} OK ${vertfonce}"
                # loader fast velocity
                loader .01;
                echo ""
                echo -e "${color} enter images13 url of tools & languages you are used ${orange}(without https:// or https://www)! ${blanc}"
                read link13
                echo -e "${vertfonce}"
                echo -e "REACT_APP_PICTURE_13=${link13}\n" >> .env.local
                # loader fast velocity
                loader .01;
                echo -e "${color} OK ${vertfonce}"
                # loader fast velocity
                loader .01;
                echo ""
                echo -e "${color} enter images14 url of tools & languages you are used ${orange}(without https:// or https://www)! ${blanc}"
                read link14
                echo -e "${vertfonce}"
                echo -e "REACT_APP_PICTURE_14=${link14}\n" >> .env.local
                # loader fast velocity
                loader .01;
                echo -e "${color} OK ${vertfonce}"
                # loader fast velocity
                loader .01;
                echo ""
                echo -e "${color} enter images15 url of tools & languages you are used ${orange}(without https:// or https://www)! ${blanc}"
                read link15
                echo -e "${vertfonce}"
                echo -e "REACT_APP_PICTURE_15=${link15}\n" >> .env.local
                # loader fast velocity
                loader .01;
                echo -e "${color} OK ${vertfonce}"
                # loader fast velocity
                loader .01;
                echo ""
                echo -e "${color} enter images16 url of tools & languages you are used ${orange}(without https:// or https://www)! ${blanc}"
                read link16
                echo -e "${vertfonce}"
                echo -e "REACT_APP_PICTURE_16=${link16}\n" >> .env.local
                # loader fast velocity
                loader .01;
                echo -e "${color} OK ${vertfonce}"; break;; # else exit from script
        [Nn]* ) echo -e "REACT_APP_PICTURE_9=
REACT_APP_PICTURE_10=
REACT_APP_PICTURE_11=
REACT_APP_PICTURE_12=
REACT_APP_PICTURE_13=
REACT_APP_PICTURE_14=
REACT_APP_PICTURE_15=
REACT_APP_PICTURE_16=\n" >> .env.local;  break;;
        * ) echo " Please answer Yes or No";;
    esac
done
echo ""
# loader fast velocity
loader .01;

echo -e "${orange} BIOGRAPHY SECTION ${vertfonce}"
echo -e "#BIOGRAPHY SECTION\n" >> .env.local
# loader fast velocity
loader .01;
echo ""
echo -e "${color} If you want bio text content appear or not ${orange} (if your choice is 'i want' then, put 'yes' otherwise put 'no')! ${blanc}"
read bio
echo -e "${vertfonce}"
echo -e "REACT_APP_APPEAR_OPTION_BIO= '${bio}'\n" >> .env.local
# loader fast velocity
loader .01;
echo -e "${color} OK ${vertfonce}"
# loader fast velocity
loader .01;

echo -e "${orange} FOOTER ${vertfonce}"
echo -e "#FOOTER\n" >> .env.local
# loader fast velocity
loader .01;
echo ""
echo -e "${orange} Developer section footer ${vertfonce}"
echo -e "#Developer section footer\n" >> .env.local
loader .01
echo ""
echo -e "${color} enter your name link 1 here! ${blanc}"
read nameLink1
echo -e "${vertfonce}"
echo -e "REACT_APP_LINK1_NAME=${nameLink1}\n" >> .env.local
# loader fast velocity
loader .01;
echo -e "${color} OK ${vertfonce}"
# loader fast velocity
loader .01;
echo ""
echo -e "${color} enter your link 1 here ${orange}(without https:// or https://www) ${blanc}"
read Link1
echo -e "${vertfonce}"
echo -e "REACT_APP_LINK1_URL=${Link1}\n" >> .env.local
# loader fast velocity
loader .01;
echo -e "${color} OK ${vertfonce}"
# loader fast velocity
loader .01;
echo ""
echo -e "${color} if there is neither a links nor names, then the 3 links & names does not appear on the screen ${vertfonce}"
echo ""
loader .01

echo ""
echo -e "${color} enter your name link 2 ${orange}(pdf file) ${color}CV for example here ${blanc}"
read pdfLink
echo -e "${vertfonce}"
echo -e "REACT_APP_NAME_PDF=${pdfLink}\n" >> .env.local
# loader fast velocity
loader .01;
echo -e "${color} OK ${vertfonce}"
# loader fast velocity
loader .01;
echo ""
echo -e "${color} enter your link 2 ${orange}(without https:// or https://www) ${blanc}"
read Link2
echo -e "${vertfonce}"
echo -e "REACT_APP_PDF_LINK=${Link2}\n" >> .env.local
# loader fast velocity
loader .01;
echo -e "${color} OK ${vertfonce}"
# loader fast velocity
loader .01;

echo ""
echo -e "${color} enter your name link 3 here ${blanc}"
read nameLink3
echo -e "${vertfonce}"
echo -e "REACT_APP_LINK3_NAME=${nameLink3}\n" >> .env.local
# loader fast velocity
loader .01;
echo -e "${color} OK ${vertfonce}"
# loader fast velocity
loader .01;
echo ""
echo -e "${color} enter your link 3 here ${orange}(without https:// or https://www) ${blanc}"
read Link3
echo -e "${vertfonce}"
echo -e "REACT_APP_LINK3_URL=${Link3}\n" >> .env.local
# loader fast velocity
loader .01;
echo -e "${color} OK ${vertfonce}"

echo ""
echo -e "${color} enter your name link 4 here ${blanc}"
read nameLink4
echo -e "${vertfonce}"
echo -e "REACT_APP_LINK4_NAME=${nameLink4}\n" >> .env.local
# loader fast velocity
loader .01;
echo -e "${color} OK ${vertfonce}"
# loader fast velocity
loader .01;
echo ""
echo -e "${color} enter your link 4 here ${orange}(without https:// or https://www) ${blanc}"
read Link4
echo -e "${vertfonce}"
echo -e "REACT_APP_LINK4_URL=${Link4}\n" >> .env.local
# loader fast velocity
loader .01;
echo -e "${color} OK ${vertfonce}"
# loader fast velocity
loader .01;
echo -e "${orange} ILLUSTRATOR SECTION FOOTER ${vertfonce}"
echo -e "#ILLUSTRATOR SECTION FOOTER\n" >> .env.local
# loader fast velocity
loader .01;
echo ""
echo -e "${color} if you dont put anything, then that does not appear on the screen ${vertfonce}"
# loader fast velocity
loader .01;
echo ""
echo -e "${color} enter your store address 1 here ${orange}(without https:// or https://www) ${blanc}"
read storeLink1
echo -e "${vertfonce}"
echo -e "REACT_APP_ADDRESS_STORE_1_URL=${storeLink1}\n" >> .env.local
# loader fast velocity
loader .01;
echo ""
echo -e "${color} enter your store address 2 here ${orange}(without https:// or https://www) ${blanc}"
read storeLink2
echo -e "${vertfonce}"
echo -e "REACT_APP_ADDRESS_STORE_2_URL=${storeLink2}\n" >> .env.local


# loader fast velocity
loader .01;
echo -e "${orange} COPYRIGHT SECTION ${vertfonce}"
echo -e "#COPYRIGHT SECTION\n" >> .env.local
# loader fast velocity
loader .01;
echo ""
echo -e "${color} enter your name... ${blanc}"
read nameCopyright
echo -e "${vertfonce}"
echo -e "REACT_APP_NAME_COPYRIGHT=${nameCopyright}\n" >> .env.local
loader .01
echo ""
echo -e "${color} & the year for copyright ${blanc}"
read yearCopyright
echo -e "${vertfonce}"
echo -e "REACT_APP_YEAR_COPYRIGHT=${yearCopyright}\n" >> .env.local
# loader fast velocity
loader .01;
 echo -e "${color} personalization done in $(timer) sec ${vertfonce}"
# loader fast velocity
loader .01;
echo ""
echo -e "\xf0\x9f\x98\xba\xf0\x9f\x98\x80 ${color} AND THAT'S ALL... ENJOY THE WORLD \xf0\x9f\x98\xba\xf0\x9f\x98\x80 ${vertfonce}"
loader .1


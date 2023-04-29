#!/bin/node

/*Este script corta uma string em pedaços regulares
jogando-a para stdout ao fim da execução.
Requer: node
*/

if( process.argv[2] == "-h" || process.argv[2] == "--help" )
{
    console.log
    (
        "regcort NUMEROCARACTERES 'cadeia_de_caracteres_a_ser_cortada_em_pedacos_regulares'"
    );

}
else if( process.argv[2] != undefined && process.argv[3] != undefined )
{

    let intervalo = Number( process.argv[2] );
    let contador = 1;

    let stringConstruida = "";

    for( let numero = 0; numero <= process.argv[3].length; numero++ )
    {
        if( process.argv[3][ numero ] != undefined )
        {
            stringConstruida = stringConstruida.concat( process.argv[3][ numero ] );
            switch( contador )
            {
                case intervalo:
                    contador = 1;
                    stringConstruida = stringConstruida.concat( '\n' );
                    break;
                default:
                    contador++;
                    continue;
            }

        }
    }
    console.log( stringConstruida );
}
else
{
    console.log( "Bagulho deu problema." );
}

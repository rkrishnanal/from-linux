#first declare the configuration
Configuration HelloDSc
{
    #Then we need to declare 
    Node "localhost"
    #then we declare dsc
    Log Mymessage
    {
        Message ="hello"

    }
}
#compile configruation file
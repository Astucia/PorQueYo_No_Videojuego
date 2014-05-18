///LeeArchivoDeTexto

if(file_exists(working_directory + "PorQueYo.txt"))
{
    file = file_text_open_read(working_directory + "PorQueYo.txt");
    //file = file_text_open_read("../PorQueYo.txt");
    while (!file_text_eof(file))
    {
        ds_list_add(global.TxtLst,file_text_readln(file));
    }
    
    file_text_close(file);
}
else
{
    InyectaTexto();
}
randomize();
ds_list_shuffle(global.TxtLst);

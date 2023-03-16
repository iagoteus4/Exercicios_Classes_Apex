public class veiculo {
    public String categoria;
    public String marca;
	public String modelo;
    public Integer anoFabricacao;
	public String donoAtual;
    public String donoAntigo;
    public Decimal valorCompra;
    public Decimal valorVenda;
    public Boolean disponivel; // Serve para ter controle se está disponível para venda ou não
    
    public Veiculo(String categoria,String marca,String modelo,Integer anoFabricacao,String donoAtual,String donoAntigo,Decimal valorCompra,Decimal valorVenda,Boolean disponivel){
        this.categoria = categoria.equals('') ? 'Não informada' : categoria;
        this.marca = marca.equals('') ? 'Não informada' : marca;
        this.modelo = modelo.equals('') ? 'Não informado' : modelo;
        this.anoFabricacao = anoFabricacao;
        this.donoAtual = donoAtual;
        this.donoAntigo = donoAntigo;
        this.valorCompra = valorCompra;
        this.valorVenda = valorVenda;
        this.disponivel = disponivel;
        this.desvalorizar();
    }
    
    public void desvalorizar(){
        this.valorVenda -= (Date.today().year() - anoFabricacao) * 200;
    }
    
    public void realizar_venda(String comprador,Boolean disponivel){
        this.disponivel = disponivel;
        this.donoAntigo = this.donoAtual;
        this.donoAtual = comprador;
    }
    
}
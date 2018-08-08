App::Ubicaciones.controllers :departmaneto do
  get :listar, :map => '/departamento/listar' do
    some_method
    rpta = []
    status = 200
    begin
      rpta = Departamento.all().to_a
    rescue Exception => e
      status = 500
      rpta = {
        :tipo_mensaje => 'error',
        :mensaje => [
          'Se ha producido un error en listar los departamentos',
          e.message
        ]}
    end
    status status
    rpta.to_json
  end
end
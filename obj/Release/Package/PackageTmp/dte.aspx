<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dte.aspx.cs" Inherits="GoWebForms.dte" %>

<form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <head>
        <!-- Primary Meta Tags -->
        <title>GoFactoring</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="title" content="Impact - About Page">
        <link href="css/Enigma.css" rel="stylesheet" />
        <!-- Canonical SEO -->
        <link rel="canonical" href="" />

        <!--  Social tags      -->
        <meta name="keywords" content="Fintech Solutions">
        <meta name="description" content="">

        <!-- Schema.org markup for Google+ -->
        <meta itemprop="name" content="Fintech Solutions">
        <meta itemprop="description" content="">

        <meta itemprop="image" content="https://s3.amazonaws.com/creativetim_bucket/products/296/original/opt_impact_thumbnail.jpg">

        <!-- Twitter Card data -->
        <meta name="twitter:card" content="product">
        <meta name="twitter:site" content="@">
        <meta name="twitter:title" content="Fintech Solutions">

        <meta name="twitter:description" content="">
        <meta name="twitter:creator" content="@">
        <meta name="twitter:image" content="https://s3.amazonaws.com/creativetim_bucket/products/296/original/opt_impact_thumbnail.jpg">


        <!-- Open Graph data -->
        <meta property="fb:app_id" content="655968634437471">
        <meta property="og:title" content="Fintech Solutions" />
        <meta property="og:type" content="article" />
        <meta property="og:url" content="https://www.fintechsolutions.com.py/" />
        <meta property="og:image" content="https://s3.amazonaws.com/creativetim_bucket/products/296/original/opt_impact_thumbnail.jpg" />
        <meta property="og:description" content="Fintech Solutions" />
        <meta property="og:site_name" content="Fintech Solutions" />



        <!-- Favicon -->
        <link rel="icon" href="../assets/img/favicon/favicon.png" type="image/png" />

        <!-- Fontawesome -->
        <link type="text/css" href="../../vendor/@fortawesome/fontawesome-free/css/all.min.css" rel="stylesheet" />

        <!-- Nucleo icons -->
        <link rel="stylesheet" href="dashboard/assets/vendor/nucleo/css/nucleo.css" type="text/css" />

        <!-- Prism -->
        <link type="text/css" href="../../vendor/prismjs/themes/prism.css" rel="stylesheet" />

        <!-- Front CSS -->
        <link type="text/css" href="../css/front.css" rel="stylesheet" />

        <style>
            a.button {
                border: solid;
                color: white;
                background-color: #4CAF50;
                text-align: center;
                text-decoration: none;
                display: inline-block;
                font-size: 12px;
                margin: 5px;
                padding: 5px;
                cursor: pointer;
            }
        </style>


    </head>

    <body>
        <header class="header-global navbar-theme-primary" runat="server">
            <nav id="navbar-main" class="navbar navbar-main navbar-expand-lg headroom py-lg-3 px-lg-6 navbar-dark navbar-theme-primary">
                <div class="container">
                    <a class="navbar-brand @@logo_classes" href="../../home.aspx">
                        <img class="navbar-brand-dark common" src="../assets/img/brand/gofactoring2.png" height="35" alt="Logo light">
                        <img class="navbar-brand-light common" src="../assets/img/brand/gofactoring.png" height="35" alt="Logo dark">
                    </a>
                    <div class="navbar-collapse collapse" id="navbar_global">
                        <div class="navbar-collapse-header">
                            <div class="row">
                                <div class="col-6 collapse-brand">
                                    <a href="../../home.aspx">
                                        <img src="../assets/img/brand/gofactoring.png" height="35" alt="">
                                    </a>
                                </div>
                                <div class="col-6 collapse-close">
                                    <a href="#navbar_global" role="button" class="fas fa-times" data-toggle="collapse"
                                        data-target="#navbar_global" aria-controls="navbar_global" aria-expanded="false"
                                        aria-label="Toggle navigation"></a>
                                </div>
                            </div>
                        </div>




                        <div class="btn-group">
                            <div class="dropdown" hidden="hidden">
                                <button class="btn btn-sm btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton2" data-bs-toggle="dropdown" aria-expanded="false">
                                    Factoring
                                </button>
                                <ul class="dropdown-menu dropdown-menu-dark" aria-labelledby="dropdownMenuButton2">
                                    <li id="li_providers" runat="server"><a class="dropdown-item active" href="Proveedores.aspx">Proveedores</a></li>
                                    <li id="li_cliente" runat="server"><a class="dropdown-item" href="Clientes.aspx">Clientes</a></li>
                                    <li id="li_invoices" runat="server"><a class="dropdown-item" href="Documentos">Documentos</a></li>
                                    <li>
                                        <hr class="dropdown-divider">
                                    </li>
                                    <li id="li_formulas" runat="server"><a class="dropdown-item" href="Formulas.aspx">Formulas</a></li>
                                    <li id="li_variables" runat="server"><a class="dropdown-item" href="Variables.aspx">Variables</a></li>
                                    <li id="li_parameters" runat="server"><a class="dropdown-item" href="Parametros.aspx">Parámetros</a></li>
                                    <li id="li_asignaciones" runat="server"><a class="dropdown-item" href="Asignaciones.aspx">Asignaciones</a></li>
                                </ul>
                            </div>

                            <div class="dropdown" hidden="hidden">
                                <button class="btn btn-sm btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton2" data-bs-toggle="dropdown" aria-expanded="false">
                                    Documentos Electrónicos
                                </button>
                                <ul class="dropdown-menu dropdown-menu-dark" aria-labelledby="dropdownMenuButton2">

                                    <li id="li3" runat="server"><a class="dropdown-item" href="documentos.aspx?state=pendiente">DE</a></li>
                                    <li>
                                        <hr class="dropdown-divider">
                                    </li>

                                </ul>
                            </div>
                          
                            <button runat="server" id="BtnUser" class="btn btn-sm btn-primary" title="">
                                <i class="fas fa-user"></i>
                            </button>
                            <button runat="server" id="BtnLogout" class="btn btn-sm btn-primary" title="Cerrar sesión" onserverclick="BtnLogout_Click">
                                <i class="fas fa-sign-out-alt"></i>Salir
                            </button>
                        </div>




                        <div class="d-lg-block @@cta_button_classes js-login1">
                        </div>
                    </div>

                    <div class="d-flex d-lg-none align-items-center">
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar_global"
                            aria-controls="navbar_global" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                    </div>
                </div>
            </nav>
        </header>
        <main>
            <!-- Hero -->
            <section class="section-header pb-2 pb-lg-2 mb-2 mb-lg-2 text-white">
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-12 col-md-8 text-center">
                        </div>
                    </div>
                </div>
                <%-- <div class="pattern bottom"></div>--%>
            </section>

            <div class="container" id="MainContainer">

                <div class="page-header  encabezado">
                    <div class="container-fluid">
                        <asp:Panel runat="server" DefaultButton="SearchBtn">
                            <div class="row">
                                <div class="col-4 font-weight-bold">
                                    Palabra clave
                                </div>
                                <div class="col-2 font-weight-bold">
                                    Criterio
                                </div>
                                <div class="col-6">
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-4">
                                    <asp:TextBox ID="txtSearchKey" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                                <div class="col-2">
                                    <asp:DropDownList ID="searchParameterDDL" runat="server" CssClass="form-control">
                                        <asp:ListItem Text="Cliente" Value="PROVEEDOR"></asp:ListItem>
                                        <asp:ListItem Text="Número" Value="NUMERO"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>

                                <div class="col-6">
                                    <div class="btn-group btn-shadow">
                                        <asp:LinkButton CssClass="btn btn-primary btn-border" runat="server" ID="SearchBtn" onserverclick="SearchBtn_ServerClick" ToolTip="Buscar">
                                <div class="form-row">
                                <asp:Label Text="Buscar" CssClass="btn-label d-none  d-xl-block d-lg-block" runat="server"></asp:Label>
                                <i class="fas fa-search fa-sm" style="padding:5px"></i>
                              </div>
                                        </asp:LinkButton>

                                        <asp:LinkButton CssClass="btn btn-primary btn-border" runat="server" ID="AddRegistroBtn" ToolTip="Crear factura" OnClick="AddLicitacionBtn_ServerClick">
                                <div class="form-row">
                                <asp:Label  Text="Crear factura" CssClass="btn-label d-none  d-xl-block d-lg-block" runat="server"></asp:Label> 
                                <i class="fas fa-plus fa-sm"  style="padding:5px"></i>
                                </div>
                                        </asp:LinkButton>
                                        <div class="btn-group" role="group">
                                            <button id="btnGroupDrop1" type="button" class="btn btn-primary dropdown-toggle btn-border" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                #
                                            </button>
                                            <div class="dropdown-menu" aria-labelledby="btnGroupDrop1">
                                                <a class="dropdown-item" href="/Contrato.aspx?PageSize=10" runat="server">10</a>
                                                <a class="dropdown-item" href="/Contrato.aspx?PageSize=20" runat="server">20</a>
                                                <a class="dropdown-item" href="/Contrato.aspx?PageSize=30" runat="server">30</a>
                                                <a class="dropdown-item" href="/Contrato.aspx?PageSize=50" runat="server">50</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </asp:Panel>
                    </div>
                    <div class="row">
                        <asp:Label ID="ErrorLabel" runat="server" Visible="False" CssClass="form-control" />
                    </div>

                </div>

                <div class="container-fluid">
                    <div class="row pie" style="padding-left: 15px">
                        <asp:DataPager ID="ContratoDataPager" runat="server" PagedControlID="ContratoListView" PageSize="10">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonCssClass="btn btn-primary btn-sm" ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" FirstPageText="Primera" />
                                <asp:NumericPagerField ButtonType="Button" CurrentPageLabelCssClass="btn btn-sm font-weight-bold  border" NextPreviousButtonCssClass="btn btn-default btn-sm" NumericButtonCssClass="btn btn-default btn-sm" />
                                <asp:NextPreviousPagerField ButtonCssClass="btn btn-primary btn-sm" ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" LastPageText="Última" />
                            </Fields>
                        </asp:DataPager>
                    </div>

                    <asp:ListView ID="ContratoListView"
                        runat="server"
                        DataSourceID="ContratoDS"
                        DataKeyNames="IdContrato"
                        OnItemCommand="ListView_ItemCommand"
                        OnItemDataBound="ContratoListView_ItemDataBound">
                        <LayoutTemplate>
                            <div class="table table-responsive">
                                <table class="table table-striped table-condensed">
                                    <thead>
                                        <th>ID</th>
                                        <th>Cliente</th>
                                        <th>Emisión</th>
                                        <th>Vencimiento</th>
                                        <th>#</th>
                                        <th>Punto</th>
                                        <th>Estado</th>
                                        <th>Tipo</th>
                                        <th>...</th>
                                        <th>...</th>
                                        <th>...</th>
                                    </thead>
                                    <tbody>
                                        <tr runat="server" id="itemPlaceholder" />
                                    </tbody>
                                </table>
                            </div>
                        </LayoutTemplate>
                        <ItemTemplate>

                            <tr>
                                <td>
                                    <asp:Label ID="lblIdContrato" runat="server" Text='<%# Eval("IdContrato") %>' /></td>
                                <td>
                                    <asp:Label ID="lblIdProveedor" runat="server" Text='<%# Eval("Proveedor") %>' /></td>
                                <td>
                                    <asp:Label ID="lblFechaInicioContrato" runat="server" Text='<%# DateTime.Parse( Eval("FechaInicioContrato").ToString()).ToShortDateString() %>' /></td>
                                <td>
                                    <asp:Label ID="lblFechaFinContrato" runat="server" Text='<%# DateTime.Parse( Eval("FechaFinContrato").ToString()).ToShortDateString()  %>' /></td>
                                <td>
                                    <asp:Label ID="lblNroContrato" runat="server" Text='<%# Eval("NroContrato") %>' /></td>
                                <td>
                                    <asp:Label ID="lblIdLicitacion" runat="server" Text='<%# Eval("Licitacion") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="lblEstado" runat="server" Text='<%# Eval("Estado") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Tipo") %>' />
                                </td>

                                <td>
                                    <asp:LinkButton runat="server" ID="EditContratoBtn" CommandName="Edit" CommandArgument='<%# Eval("IdContrato")%>' ToolTip="Editar">
                            <i class="fa fa-edit" aria-hidden="true"></i>

                                    </asp:LinkButton>
                                </td>
                                <td>
                                    <asp:LinkButton runat="server" ID="DetailsContratoBtn" CommandName="Editar" CommandArgument='<%# Eval("IdContrato")%>' ToolTip="Ver detalles">
                            <i class="fa fa-keyboard fa-sm"></i>
                                    </asp:LinkButton>
                                </td>

                                <td>

                                    <asp:LinkButton runat="server" ID="DeleteContratoBtn" CommandName="Eliminar" CommandArgument='<%# Eval("IdContrato")%>' ToolTip="Eliminar Contrato" OnClientClick="return confirm('Desea eliminar el registro?');">
                            <i class="fas fa-trash-alt"></i>
                                    </asp:LinkButton>

                                </td>

                            </tr>

                        </ItemTemplate>
                        <EditItemTemplate>
                            <tr>
                                <td>
                                    <asp:Label ID="lblIdContrato" runat="server" Text='<%# Eval("IdContrato") %>' /></td>
                                <td>
                                    <asp:Label ID="lblIdProveedor" runat="server" Text='<%# Eval("Proveedor") %>' /></td>
                                <td>
                                    <asp:TextBox ID="lblFechaInicioContrato" runat="server" Text='<%# Bind("FechaInicioContrato") %>' />
                                    <asp:CompareValidator ID="cvFechaInicioContrato" runat="server" Type="Date" Operator="DataTypeCheck" ControlToValidate="lblFechaInicioContrato" ErrorMessage="Fecha inválida."></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="lblFechaFinContrato" runat="server" Text='<%# Bind("FechaFinContrato")  %>' />
                                    <asp:CompareValidator ID="cvFechaFinContrato" runat="server" Type="Date" Operator="DataTypeCheck" ControlToValidate="lblFechaFinContrato" ErrorMessage="Fecha inválida."></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="lblNroContrato" runat="server" Text='<%# Bind("NroContrato") %>' /></td>
                                <td>
                                    <asp:DropDownList ID="IdLicitacionDDL"
                                        runat="server"
                                        DataSourceID="LicitacionDS"
                                        DataTextField="Licitacion"
                                        DataValueField="IdLicitacion"
                                        CssClass="form-control form-control-sm"
                                        SelectedValue='<%# Bind("IdLicitacion") %>'>
                                    </asp:DropDownList>

                                </td>
                                <td>
                                    <asp:DropDownList ID="EstadoDDL"
                                        runat="server"
                                        CssClass="form-control form-control-sm"
                                        SelectedValue='<%# Bind("Estado") %>'>
                                        <asp:ListItem Value="Activo" Text="Activo"></asp:ListItem>
                                        <asp:ListItem Value="Finalizado" Text="Finalizado"></asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td>
                                    <asp:DropDownList ID="TipoDDL"
                                        runat="server"
                                        CssClass="form-control form-control-sm"
                                        SelectedValue='<%# Bind("Tipo") %>'>
                                        <asp:ListItem Value="CON" Text="Contado"></asp:ListItem>
                                        <asp:ListItem Value="CRE" Text="Crédito"></asp:ListItem>

                                    </asp:DropDownList>
                                </td>


                                <td>
                                    <asp:LinkButton runat="server" ID="btnEdit" CommandName="Update" ToolTip="Aceptar">
                            <i class="fas fa-check"></i>
                                    </asp:LinkButton>
                                </td>
                                <td>
                                    <asp:LinkButton runat="server" ID="btnCancel" CommandName="Cancel" ToolTip="Cancelar">
                            <i class="fas fa-times"></i>
                                    </asp:LinkButton>
                                </td>
                            </tr>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                        </InsertItemTemplate>
                    </asp:ListView>





                    <!-- #region DataSources -->
                    <asp:SqlDataSource ID="ContratoDS"
                        runat="server" ConnectionString="<%$ ConnectionStrings:AlmacenesConnectionString %>"
                        SelectCommand="mosto.management.sp_Contrato_get_all" SelectCommandType="StoredProcedure"
                        UpdateCommand="mosto.[management].[sp_Contrato_update]" UpdateCommandType="StoredProcedure">
                        <DeleteParameters>
                        </DeleteParameters>
                        <InsertParameters>
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="IdContrato" DbType="Int32" />
                            <asp:Parameter Name="FechaInicioContrato" DbType="Date" />
                            <asp:Parameter Name="FechaFinContrato" DbType="Date" />
                            <asp:Parameter Name="NroContrato" DbType="String" />
                            <asp:Parameter Name="IdLicitacion" DbType="Int32" />
                            <asp:Parameter Name="Estado" DbType="String" />
                            <asp:Parameter Name="Tipo" DbType="String" />
                        </UpdateParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="txtSearchKey" PropertyName="Text" Name="key" DefaultValue="*" />
                            <asp:ControlParameter ControlID="searchParameterDDL" PropertyName="SelectedValue" Name="parameter" />
                        </SelectParameters>
                    </asp:SqlDataSource>

                    <asp:SqlDataSource ID="LicitacionDS" runat="server" ConnectionString="<%$ ConnectionStrings:AlmacenesConnectionString %>"
                        SelectCommand="select l.IdLicitacion, upper(l.llamado) + ' | Nro. [' + cast(l.NroLicitacion as varchar(50)) + ']'  as Licitacion
                           
                            from mosto.management.licitacion l;"
                        SelectCommandType="Text"></asp:SqlDataSource>

                    <!-- #endregion -->




                </div>

                <!-- #region DataSources -->
                <asp:SqlDataSource ID="DocumentoDS"
                    runat="server" ConnectionString="<%$ ConnectionStrings:AlmacenesConnectionString %>"
                    InsertCommand="ws_sifen.dbo.sp_DocumentosElectronicos_insert" InsertCommandType="StoredProcedure"
                    SelectCommand="ws_sifen.dbo.sp_DocumentosElectronicos_get_all" SelectCommandType="StoredProcedure">
                    <DeleteParameters>
                        <asp:Parameter Name="id_documento_electronico" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>

                        <asp:Parameter Name="tipoDocumento" Type="Int32" />
                        <asp:Parameter Name="establecimiento" Type="String" />
                        <asp:Parameter Name="codigoSeguridadAleatorio" Type="String" />
                        <asp:Parameter Name="punto" Type="String" />
                        <asp:Parameter Name="numero" Type="String" />
                        <asp:Parameter Name="descripcion" Type="String" />
                        <asp:Parameter Name="observacion" Type="String" />
                        <asp:Parameter Name="tipoContribuyente" Type="Int32" />
                        <asp:Parameter Name="fecha" Type="DateTime" />
                        <asp:Parameter Name="tipoEmision" Type="Int32" />
                        <asp:Parameter Name="tipoTransaccion" Type="Int32" />
                        <asp:Parameter Name="tipoImpuesto" Type="Int32" />
                        <asp:Parameter Name="moneda" Type="String" />
                        <asp:Parameter Name="condicionAnticipo" Type="Int32" />
                        <asp:Parameter Name="condicionTipoCambio" Type="Int32" />
                        <asp:Parameter Name="cambio" Type="Decimal" />
                        <asp:Parameter Name="id_cliente" Type="Int32" />


                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="id_documento_electronico" Type="Int32" />
                        <asp:Parameter Name="tipoDocumento" Type="Int32" />
                        <asp:Parameter Name="establecimiento" Type="String" />
                        <asp:Parameter Name="codigoSeguridadAleatorio" Type="String" />
                        <asp:Parameter Name="punto" Type="String" />
                        <asp:Parameter Name="numero" Type="String" />
                        <asp:Parameter Name="descripcion" Type="String" />
                        <asp:Parameter Name="observacion" Type="String" />
                        <asp:Parameter Name="tipoContribuyente" Type="Int32" />
                        <asp:Parameter Name="fecha" Type="DateTime" />
                        <asp:Parameter Name="tipoEmision" Type="Int32" />
                        <asp:Parameter Name="tipoTransaccion" Type="Int32" />
                        <asp:Parameter Name="tipoImpuesto" Type="Int32" />
                        <asp:Parameter Name="moneda" Type="String" />
                        <asp:Parameter Name="condicionAnticipo" Type="Int32" />
                        <asp:Parameter Name="condicionTipoCambio" Type="Int32" />
                        <asp:Parameter Name="cambio" Type="Decimal" />
                        <asp:Parameter Name="id_cliente" Type="Int32" />
                        <asp:Parameter Name="id_usuario" Type="Int32" />
                        <asp:Parameter Name="id_certificado" Type="Int32" />

                    </UpdateParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="txtSearchKey" PropertyName="Text" Name="key" DefaultValue="*" />
                        <asp:ControlParameter ControlID="searchParameterDDL" PropertyName="SelectedValue" Name="parameter" />
                        <asp:QueryStringParameter Name="state" DbType="String" QueryStringField="state" />
                        <asp:SessionParameter SessionField="USERNAME" Name="user" DbType="String" />
                    </SelectParameters>
                </asp:SqlDataSource>



                <asp:SqlDataSource ID="TiposDocumentoDS_DDL" runat="server" ConnectionString="<%$ ConnectionStrings:AlmacenesConnectionString %>"
                    SelectCommand="select tipoDocumento, Descripcion from ws_sifen.dbo.TiposDocumentoElectronicos order by tipoDocumento " SelectCommandType="Text"></asp:SqlDataSource>

                <asp:SqlDataSource ID="EstablecimientosDS_DDL" runat="server" ConnectionString="<%$ ConnectionStrings:AlmacenesConnectionString %>"
                    SelectCommand="select codigo, codigo + ' - ' + denominacion as establecimiento from ws_sifen.dbo.Establecimientos order by codigo " SelectCommandType="Text"></asp:SqlDataSource>

                <asp:SqlDataSource ID="PuntosExpedicionDS_DDL" runat="server" ConnectionString="<%$ ConnectionStrings:AlmacenesConnectionString %>"
                    SelectCommand="select codigo, codigo + ' - ' + punto as PuntoExpedicion from ws_sifen.dbo.PuntosExpedicion order by codigo " SelectCommandType="Text"></asp:SqlDataSource>

                <asp:SqlDataSource ID="TiposContribuyenteDS_DDL" runat="server" ConnectionString="<%$ ConnectionStrings:AlmacenesConnectionString %>"
                    SelectCommand="select tipo, cast(tipo as varchar(10)) + ' - ' + TipoContribuyenteDescripcion as TipoContribuyente from ws_sifen.dbo.TiposContribuyente order by tipo" SelectCommandType="Text"></asp:SqlDataSource>

                <asp:SqlDataSource ID="TiposEmisionDS_DDL" runat="server" ConnectionString="<%$ ConnectionStrings:AlmacenesConnectionString %>"
                    SelectCommand="select tipo, cast(tipo as varchar(10)) + ' - ' + TipoEmisionDescripcion as TipoEmision from ws_sifen.dbo.TiposEmision order by tipo" SelectCommandType="Text"></asp:SqlDataSource>

                <asp:SqlDataSource ID="TiposTransaccionDS_DDL" runat="server" ConnectionString="<%$ ConnectionStrings:AlmacenesConnectionString %>"
                    SelectCommand="select tipo, cast(tipo as varchar(10)) + ' - ' + TipoTransaccionDescripcion as TipoTransaccion from ws_sifen.dbo.Tipostransaccion order by tipo" SelectCommandType="Text"></asp:SqlDataSource>

                <asp:SqlDataSource ID="TiposImpuestoDS_DDL" runat="server" ConnectionString="<%$ ConnectionStrings:AlmacenesConnectionString %>"
                    SelectCommand="select tipo, cast(tipo as varchar(10)) + ' - ' + TipoImpuestoDescripcion as TipoImpuesto from ws_sifen.dbo.TiposImpuesto order by tipo" SelectCommandType="Text"></asp:SqlDataSource>

                <asp:SqlDataSource ID="ClientesDS_DDL" runat="server" ConnectionString="<%$ ConnectionStrings:AlmacenesConnectionString %>"
                    SelectCommand="select id_cliente, razonSocial + ' - ' + ruc as cliente from ws_sifen.dbo.Clientes order by razonSocial" SelectCommandType="Text"></asp:SqlDataSource>


                <asp:SqlDataSource ID="MonedasDS_DDL" runat="server" ConnectionString="<%$ ConnectionStrings:AlmacenesConnectionString %>"
                    SelectCommand="select moneda from ws_sifen.dbo.Monedas order by moneda" SelectCommandType="Text"></asp:SqlDataSource>

                <asp:SqlDataSource ID="EstadosDS_DDL" runat="server" ConnectionString="<%$ ConnectionStrings:AlmacenesConnectionString %>"
                    SelectCommand="select id_estado, estado from ws_sifen.dbo.Estados order by id_estado" SelectCommandType="Text"></asp:SqlDataSource>
                <!-- #endregion -->

            </div>



            <footer class="footer section pt-6 pt-md-8 pt-lg-10 pb-3 bg-primary text-white overflow-hidden">
                <div class="pattern pattern-soft top"></div>
                <div class="container">
                    <div class="row">
                        <div class="col-lg-4 mb-4 mb-lg-0">
                            <a class="footer-brand mr-lg-5 d-flex" href="../../home.aspx">
                                <img src="../assets/img/brand/gofactoring2.png" height="35" class="mr-3" alt="Footer logo">
                            </a>
                            <div class="dropdown mb-4 mb-lg-0">
                                <p>Asunción, Paraguay</p>
                                <p>Teléfono de contacto -  +595985678599</p>
                                <p>Mail de contacto -  hola@gofactoring.com.py</p>
                            </div>
                        </div>
                        <div class="col-12 col-sm-4 col-lg-4 mb-4 mb-lg-0">
                            <h6>Información</h6>
                            <ul class="links-vertical">
                                <li><a target="_blank" href="politicas.html">Política de Privacidad</a></li>
                                <li><a target="_blank" href="legal.html">Información Legales</a></li>
                                <li><a target="_blank" href="novedades.html">Novedades</a></li>
                            </ul>
                        </div>

                        <div class="col-12 col-sm-4 col-lg-4">
                            <h6>Suscribirse</h6>
                            <p class="font-small">Manténgase informado de nuestras últimas novedades.</p>

                            <div class="form-row">
                                <div class="col-8">
                                    <input type="email" class="form-control mb-2" placeholder="Correo" name="email">
                                </div>
                                <div class="col-4">
                                    <button type="submit" class="btn btn-secondary btn-block"><span>Suscribirse</span></button>
                                </div>
                            </div>

                        </div>
                    </div>
                    <hr class="my-4 my-lg-5">
                    <div class="row">
                        <div class="col pb-4 mb-md-0">
                            <div class="d-flex text-center justify-content-center align-items-center">
                                <p class="font-weight-normal mb-0">@ <a href="#" target="_blank">Fintech Solutions</p>
                            </div>
                        </div>
                    </div>
                </div>
            </footer>

        </main>

        <!-- Core -->
        <script src="../../vendor/jquery/dist/jquery.min.js"></script>
        <script src="../../vendor/popper.js/dist/umd/popper.min.js"></script>
        <script src="../../vendor/bootstrap/dist/js/bootstrap.min.js"></script>
        <script src="../../vendor/headroom.js/dist/headroom.min.js"></script>

        <!-- Vendor JS -->
        <script src="../../vendor/onscreen/dist/on-screen.umd.min.js"></script>
        <script src="../../vendor/waypoints/lib/jquery.waypoints.min.js"></script>
        <script src="../../vendor/jarallax/dist/jarallax.min.js"></script>
        <script src="../../vendor/smooth-scroll/dist/smooth-scroll.polyfills.min.js"></script>

        <!-- Place this tag in your head or just before your close body tag. -->
        <script async defer src="https://buttons.github.io/buttons.js"></script>

        <!-- Impact JS -->
        <script src="../assets/js/front.js"></script>

        <script>

            $("a.nav-link").on('click', function (event) {
                if (this.hash !== "") {
                    event.preventDefault();
                    var hash = this.hash;
                    $('html, body').animate({
                        scrollTop: $(hash).offset().top
                    }, 800, function () {

                        window.location.hash = hash;
                    });
                }
            });




            var formatter = new Intl.NumberFormat('es-PY', {
                style: 'currency',
                currency: 'pyg',
                minimumFractionDigits: 0,
                maximumFractionDigits: 3,

            });



            function Calculate() {




                // Extracting value in the amount
                // section in the variable

                const amount = document.querySelector("#amount");
                const amount_ = document.querySelector("#amount_");

                // Extracting value in the interest
                // rate section in the variable
                //const rate = document.querySelector("#rate");
                const rate = document.getElementById("rate");
                const rate_ = document.querySelector("#rate_");

                // const amount = document.getElementById('range');

                //Copying amount value to new cell
                //var src= document.querySelector("#amount");
                //var dest= document.querySelector("#total_amount");
                //dest.value=src.value;


                // Calculating interest per month


                var nonfinanceAmount = (amount.value * (5 / 100));

                var financeAmount = (amount.value) - (nonfinanceAmount);

                var fixedCost = Math.round((financeAmount * 0.0075));
                var iva = Math.round((fixedCost * 0.19));
                const interest = Math.round((financeAmount * (0.015 / 30) * rate.value));

                const rangeV = document.getElementById('rangeV');
                const rate2 = document.getElementById('rate2');

                // Calculating interest per month (proveedores)
                var tasa_ = 0.025;
                var fixedCost_ = 50000;
                var iva_ = (fixedCost_ * 0.19);
                var financeAmount_ = (amount_.value * 0.30);
                var rest_financeAmount_ = (amount_.value * 0.70);
                var totalAmount_ = (amount_.value);

                const interest_ = (financeAmount_ * (0.025 / 30) * rate_.value);

                const rangeV_ = document.getElementById('rangeV_');
                const rate2_ = document.getElementById('rate2_');
                // rangeV = 100000;

                // Calculating Factoring - Ordering discount value
                tasaFactoring = 0.015;
                amountFactoring = amount_.value * 0.98;

                interestFactoring = ((amount_.value * 0.98) * (0.015 / 30) * rate_.value);

                fixedCostFactoring_ = amountFactoring * 0.0075;

                ivaFactoring_ = fixedCostFactoring_ * 0.19;

                totalFactoring_ = Math.round((amountFactoring - interestFactoring - fixedCostFactoring_ - ivaFactoring_ - financeAmount_));


                // Calculating Ordering Value

                totalOrdering_ = (financeAmount_ - interest_ - fixedCost_ - iva_);

                // Calculating Excess Value

                excessFactoring_ = (amount_.value - amount_.value * 0.98);

                // Calculating Totals in Proveedores section

                totalFactoringCost_ = excessFactoring_ + totalOrdering_ + totalFactoring_;

                // Calculating Total Cost

                const totalCost = Math.round((interest + fixedCost + iva));
                const totalCost_ = Math.round((interest_ + fixedCost_ + iva_));

                // Calculating total payment
                //const total = Math.round((financeAmount - totalCost).toFixed(2));
                //const total_ = Math.round((financeAmount_ - totalCost_).toFixed(2));

                var dias_rod = rate.value;
                var tasa_rod = 15 / 100;

                var pow = Math.pow((1 + tasa_rod), (dias_rod / 365));

                const total = Math.round(1 / (pow) * (financeAmount) - (1.5 / 100) * (amount.value) + 3 * 6700);

                const total_ = Math.round(1 / (pow) * (financeAmount) - (1.5 / 100) * (amount.value) + 3 * 6700);

                //Transform to CLP
                //     var formatter = new Intl.NumberFormat('es-CL', {
                //         style: 'currency',
                //         currency: 'CLP',
                //         // These options are needed to round to whole numbers if that's what you want.
                //         minimumFractionDigits: 0, // (this suffices for whole numbers, but will print 2500.10 as $2,500.1)
                //         maximumFractionDigits: 3, // (causes 2500.99 to be printed as $2,501)

                // });

                const newValue = Number((amount.value - amount.min) * 100 / (amount.max - amount.min));
                const newPosition = 10 - (newValue * 0.2);
                rangeV.innerHTML = `<span>${amount.value}</span>`;
                rangeV.style.left = `calc(${newValue}% + (${newPosition}px))`;

                // DIAS
                const newValueD = Number((rate.value - rate.min) * 100 / (rate.max - rate.min));
                const newPositionD = 10 - (newValueD * 0.2);
                rate2.innerHTML = `<span>${rate.value} Días</span>`;
                rate2.style.left = `calc(${newValueD}% + (${newPositionD}px))`;


                const newValue_ = Number((amount_.value - amount_.min) * 100 / (amount_.max - amount_.min));
                const newPosition_ = 10 - (newValue_ * 0.2);
                rangeV_.innerHTML = `<span>${amount_.value}</span>`;
                rangeV_.style.left = `calc(${newValue_}% + (${newPosition_}px))`;

                // DIAS
                const newValueD_ = Number((rate_.value - rate_.min) * 100 / (rate_.max - rate_.min));
                const newPositionD_ = 10 - (newValueD_ * 0.2);
                rate2_.innerHTML = `<span>${rate_.value} Días</span>`;
                rate2_.style.left = `calc(${newValueD_}% + (${newPositionD_}px))`;


                $('#rangeV').text(amount.value);
                $('#rangeV_').text(amount_.value);

                //Transform variables to CLP�
                final_financeAmount = formatter.format(financeAmount);
                final_nonfinanceAmount = formatter.format(nonfinanceAmount);
                finalAmount = formatter.format(amount.value);
                final_fixedCost = formatter.format(fixedCost);
                finalInterest = formatter.format(interest);
                finalIVA = formatter.format(iva);
                final_totalCost = formatter.format(totalCost);
                finalTotal = formatter.format(total);

                // SIMULADOR 2
                finalAmount_ = formatter.format(amount_.value);
                final_financeAmount_ = formatter.format(financeAmount_);
                final_fixedCost_ = formatter.format(fixedCost_);
                finalInterest_ = formatter.format(interest_);
                finalIVA_ = formatter.format(iva_);
                final_totalCost_ = formatter.format(totalCost_);
                final_fixedCostFact = formatter.format(fixedCostFactoring_);
                finalTotal_ = formatter.format(total_);
                finalTotalOrdering_ = formatter.format(totalOrdering_);
                finalTotalFactoring_ = formatter.format(totalFactoring_);
                finalExcedente_ = formatter.format(excessFactoring_);
                finalIVAFact = formatter.format(ivaFactoring_);
                final_totalAmount_ = formatter.format(totalAmount_);
                final_restfinanceAmount_ = formatter.format(rest_financeAmount_);




                jQuery(document).ready(function ($) {
                    jQuery("#total_amount").text(finalAmount);
                    jQuery("#total_amount_").text(final_totalAmount_);

                    // Code that uses jQuery's $ can follow here.
                });

                //Show variables in <p> HTML
                // document.getElementById("#total_amount") = finalAmount;

                document.querySelector("#costo_total").innerHTML = final_totalCost;
                document.querySelector("#monto_no_financiado").innerHTML = final_nonfinanceAmount;
                document.querySelector("#monto_financiado").innerHTML = final_financeAmount;
                document.querySelector("#monto_no_financiado_").innerHTML = final_restfinanceAmount_;
                document.querySelector("#monto_financiado_").innerHTML = final_financeAmount_;
                document.querySelector("#costo_total_").innerHTML = final_totalCost_;
                // document.querySelector("#rate2").innerHTML=rate.value + " Días";

                document.querySelector("#total").innerHTML = finalTotal;
                document.querySelector("#total_").innerHTML = finalTotal_;

                document.querySelector("#total_ordering").innerHTML = finalTotalOrdering_;
                document.querySelector("#total_factoring").innerHTML = finalTotalFactoring_;
                document.querySelector("#total_excess").innerHTML = finalExcedente_;
            }




            $(document).ready(function ($) {
                // console.log("ready");
                Calculate();
                $(".proov").click(function () {
                    $(".pyme").addClass('activeNot');
                    $(".proov").removeClass('activeNot1');
                    $("#barra").addClass('hrrr');
                    $("#barra1").removeClass('hrrr');
                    $(".titulo_proveedor").addClass('titulo_celeste');
                    $(".titulo_factura").removeClass('titulo_celeste');
                    $(".proov").addClass('proov_');
                    $(".pyme").removeClass('proov_2');


                });
                $(".pyme").click(function () {
                    // alert("prooooov");
                    $(".proov").removeClass('proov_');
                    $(".pyme").addClass('proov_2');

                    $(".proov").addClass('activeNot1');
                    $(".pyme").removeClass('activeNot');
                    $("#barra1").addClass('hrrr');
                    $("#barra").removeClass('hrrr');

                    $(".titulo_factura").addClass('titulo_celeste');
                    $(".titulo_proveedor").removeClass('titulo_celeste');
                });
            });


            document.querySelectorAll(".__range").forEach(function (el) {
                var output = document.getElementById("demo");
                var amount = document.getElementById("amount");
                // output.innerHTML = slider.value;
                el.oninput = function () {
                    // console.log(this.value);
                    // console.log(amount.value);
                    output.innerHTML = formatter.format(amount.value);
                    Calculate();

                    var valPercent = (el.valueAsNumber - parseInt(el.min)) /
                        (parseInt(el.max) - parseInt(el.min));
                    var style = 'background-image: -webkit-gradient(linear, 0% 0%, 100% 0%, color-stop(' + valPercent + ', #3BBD0A), color-stop(' + valPercent + ', #f5f6f8));';
                    el.style = style;
                };
                el.oninput();
            });

            document.querySelectorAll(".dia").forEach(function (el) {
                var output = document.getElementById("rate2");
                // var amount = document.getElementById("amount");
                // output.innerHTML = slider.value;
                el.oninput = function () {
                    // console.log(this.value);
                    // console.log(amount.value);
                    output.innerHTML = this.value + " Días";
                    Calculate();

                    var valPercent = (el.valueAsNumber - parseInt(el.min)) /
                        (parseInt(el.max) - parseInt(el.min));
                    var style = 'background-image: -webkit-gradient(linear, 0% 0%, 100% 0%, color-stop(' + valPercent + ', #3BBD0A), color-stop(' + valPercent + ', #f5f6f8));';
                    el.style = style;
                };
                el.oninput();
            });
        //   output.innerHTML = __range.value;
        // var __range = document.getElementById("__range");
        //   __range.oninput = function() {
        //     output.innerHTML = this.value;
        //     console.log(this.value);
        //   }

        </script>

        <script>

            function buildTable(response) {
                const tableBodyElem = document.querySelector(".js-table-body");
                let innerBodyHtml = "";

                response.forEach(invoice => {
                    const { id_documento_electronico, razon_social, ruc, fecha_alta, direccion } = invoice;

                    innerBodyHtml = innerBodyHtml + `<tr> <td>${id_documento_electronico}</td> <td>${ruc}</td> <td>${razon_social}</td>     <td type='date'>${fecha_alta}</td> <td>${direccion}</td>   <td><a href="/Proveedores.html?client=${id_documento_electronico}" class="button">Ver proveedores</a></td>  <tr>`;
                });

                tableBodyElem.innerHTML = innerBodyHtml;
            }

            $.ajax({
                "url": "http://www.gofactoring.com.py:9500/go/api/client",
                "method": "GET",
                "timeout": 0,
                "headers": {
                    "Content-Type": "application/json"
                },
            }).done(function (response) {
                buildTable(response);
            });
        </script>

    </body>


</form>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="facturas.aspx.cs" Inherits="GoWebForms.facturas" %>

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
                            <div class="dropdown">
                                <button class="btn btn-sm btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton2" data-bs-toggle="dropdown" aria-expanded="false">
                                    Factoring
                                </button>
                                <ul class="dropdown-menu dropdown-menu-dark" aria-labelledby="dropdownMenuButton2">
                                    <li id="li_providers" runat="server"><a class="dropdown-item active" href="Proveedores.aspx">Proveedores</a></li>
                                    <li id="li_cliente" runat="server"><a class="dropdown-item" href="Clientes.aspx">Clientes</a></li>
                                    <li id="li_invoices" runat="server"><a class="dropdown-item" href="Facturas">Facturas</a></li>
                                    <li>
                                        <hr class="dropdown-divider">
                                    </li>
                                    <li id="li_formulas" runat="server"><a class="dropdown-item" href="Formulas.aspx">Formulas</a></li>
                                    <li id="li_variables" runat="server"><a class="dropdown-item" href="Variables.aspx">Variables</a></li>
                                    <li id="li_parameters" runat="server"><a class="dropdown-item" href="Parametros.aspx">Parámetros</a></li>
                                    <li id="li_asignaciones" runat="server"><a class="dropdown-item" href="Asignaciones.aspx">Asignaciones</a></li>
                                </ul>
                            </div>

                            <div class="dropdown">
                                <button class="btn btn-sm btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton2" data-bs-toggle="dropdown" aria-expanded="false">
                                    Documentos Electrónicos
                                </button>
                                <ul class="dropdown-menu dropdown-menu-dark" aria-labelledby="dropdownMenuButton2">

                                    <li id="li3" runat="server"><a class="dropdown-item" href="documentos.aspx?state=pendiente">Documentos Electrónicos</a></li>
                                    
                                    <li>
                                        <hr class="dropdown-divider">
                                    </li>

                                </ul>
                            </div>
                            <button runat="server" id="Button1" class="btn btn-sm btn-primary" title="">
                                <i class="fas fa-user"></i>
                            </button>
                            <button runat="server" id="Button2" class="btn btn-sm btn-primary" title="Cerrar sesión" onserverclick="BtnLogout_Click">
                                <i class="fas fa-sign-out-alt"></i>Salir
                            </button>
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

            <div class="container-fluid" id="MainContainer">
                <div class="row" id="PageControlNavigator">
                    <div class="col-4">
                        <div class="btn-group btn-shadow">
                            <asp:LinkButton CssClass="btn btn-cyan btn-border" runat="server" ID="PendientesButton" ToolTip="Facturas pendientes" Font-Size="Small" OnClick="PendientesButton_Click">
                                                <div class="form-row">
                                                <asp:Label Text="Pendientes" CssClass="btn-label d-none  d-xl-block d-lg-block" runat="server" Font-Size="Small"></asp:Label>
                                                    <i class="fas fa-file-invoice" style="padding:5px"></i>
                                                </div>
                            </asp:LinkButton>
                            <asp:LinkButton CssClass="btn btn-cyan btn-border" runat="server" ID="CobranzasButton" ToolTip="Facturas factorizadas" Font-Size="Small" OnClick="CobranzasButton_Click">
                                                <div class="form-row">
                                                <asp:Label  Text="Cobranzas" CssClass="btn-label d-none  d-xl-block d-lg-block" runat="server" Font-Size="Small"></asp:Label> 
                                                <i class="fas fa-file-invoice-dollar"  style="padding:5px"></i>
                                                </div>
                            </asp:LinkButton>
                            <asp:LinkButton CssClass="btn btn-cyan btn-border" runat="server" ID="ConciliacionesButton" ToolTip="Cobranzas" Font-Size="Small" OnClick="ConciliacionesButton_Click">
                                                <div class="form-row">
                                                <asp:Label  Text="Conciliación" CssClass="btn-label d-none  d-xl-block d-lg-block" runat="server" Font-Size="Small"></asp:Label> 
                                                <i class="fas fa-receipt"  style="padding:5px"></i>
                                                </div>
                            </asp:LinkButton>
                        </div>
                    </div>
                    <div class="col-2">
                        <asp:Label ID="lblState" runat="server" CssClass="badge badge-danger badge-pill" Text="PENDIENTE"></asp:Label>
                    </div>

                </div>
                <div class="row" id="PagesContainer">
                    <asp:MultiView ID="MultiViewPager" runat="server" ActiveViewIndex="0">


                        <asp:View ID="PendientesPage" runat="server">
                            <section class="container-fluid">
                                <div class="page-header encabezado small">
                                    <div class="container-fluid">
                                        <div class="row">
                                            <div class="col-8">
                                                <div class="label label-info" style="text-align: right">
                                                    <h5>Importación de facturas</h5>
                                                </div>
                                            </div>
                                            <div class="col-4">
                                                <asp:FileUpload ID="FileUpload1" runat="server" />
                                                <asp:Button ID="btnImport" runat="server" Text="Import" OnClick="ImportCSV" />
                                            </div>
                                        </div>
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
                                                    <asp:TextBox ID="txtSearchKey" runat="server" CssClass="form-control" Font-Size="Small"></asp:TextBox>
                                                </div>
                                                <div class="col-2">
                                                    <asp:DropDownList ID="searchParameterDDL" runat="server" CssClass="form-control" Font-Size="Small">
                                                        <asp:ListItem Text="Cliente" Value="CLIENTE"></asp:ListItem>
                                                        <asp:ListItem Text="Proveedor" Value="PROVEEDOR"></asp:ListItem>
                                                        <asp:ListItem Text="Nro. factura" Value="FACTURA"></asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>

                                                <div class="col-6">
                                                    <div class="btn-group btn-shadow">
                                                        <asp:LinkButton CssClass="btn btn-primary btn-border" runat="server" ID="SearchBtn" onserverclick="SearchBtn_ServerClick" ToolTip="Buscar" Font-Size="Small">
                                                <div class="form-row">
                                                <asp:Label Text="Buscar" CssClass="btn-label d-none  d-xl-block d-lg-block" runat="server" Font-Size="Small"></asp:Label>
                                                <i class="fas fa-search fa-sm" style="padding:5px"></i>
                                                </div>
                                                        </asp:LinkButton>
                                                        <asp:LinkButton CssClass="btn btn-primary btn-border" runat="server" ID="AddRegistroBtn" data-toggle="modal" data-target="#addModal" ToolTip="Agregar Factura" Font-Size="Small">
                                                <div class="form-row">
                                                <asp:Label  Text="Agregar Factura" CssClass="btn-label d-none  d-xl-block d-lg-block" runat="server" Font-Size="Small"></asp:Label> 
                                                <i class="fas fa-plus fa-sm"  style="padding:5px"></i>
                                                </div>
                                                        </asp:LinkButton>
                                                        <asp:LinkButton CssClass="btn btn-primary btn-border" runat="server" ID="SimulationBtn" ToolTip="Generar Simulación" Font-Size="Small" OnClick="SimulationBtn_Click">
                                                <div class="form-row">
                                                <asp:Label  Text="Simulación" CssClass="btn-label d-none  d-xl-block d-lg-block" runat="server" Font-Size="Small"></asp:Label> 
                                                <i class="fas fa-camera fa-sm"  style="padding:5px"></i>
                                                </div>
                                                        </asp:LinkButton>
                                                    </div>
                                                </div>

                                            </div>
                                        </asp:Panel>
                                    </div>
                                    <div class="row">
                                        <asp:Label ID="ErrorLabel" runat="server" Visible="False" CssClass="form-control" />
                                    </div>
                                </div>

                                <div class="row pie small" style="padding-left: 15px">
                                    <asp:DataPager ID="FacturaDataPager" runat="server" PagedControlID="FacturaListView" QueryStringField="pageNumber" PageSize="30">
                                        <Fields>
                                            <asp:NextPreviousPagerField ButtonCssClass="btn btn-primary btn-sm" ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" FirstPageText="Primera" />
                                            <asp:NumericPagerField ButtonType="Button" CurrentPageLabelCssClass="btn btn-sm font-weight-bold  border" NextPreviousButtonCssClass="btn btn-default btn-sm" NumericButtonCssClass="btn btn-default btn-sm" />
                                            <asp:NextPreviousPagerField ButtonCssClass="btn btn-primary  btn-sm" ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" LastPageText="Última" />
                                        </Fields>
                                    </asp:DataPager>
                                </div>


                                <asp:ListView ID="FacturaListView"
                                    runat="server"
                                    DataSourceID="FacturaDS"
                                    DataKeyNames="id_factura"
                                    OnItemDataBound="FacturaListView_ItemDataBound"
                                    OnItemCommand="ListView_ItemCommand"
                                    OnPreRender="FacturaListView_PreRender"
                                    OnDataBound="FacturaListView_DataBound">
                                    <LayoutTemplate>
                                        <div class="table table-responsive">
                                            <table class="table table-sm  table-striped  table-hover small">
                                                <caption>
                                                    <h3><span class="badge">FACTURAS</span></h3>
                                                </caption>
                                                <thead class="table-dark" id="tbl_head" runat="server">
                                                    <th id="tblhead_id_factura" runat="server">ID</th>
                                                    <th id="tblhead_proveedor" runat="server">PROVEEDOR</th>
                                                    <th id="tblhead_nro_factura" runat="server">NRO. FACTURA</th>
                                                    <th id="tblhead_cliente" runat="server">CLIENTE</th>
                                                    <th id="tblhead_fecha_emision" runat="server">FEC. EMISIÓN</th>
                                                    <th id="tblhead_fecha_vencimiento" runat="server">FEC. VENCIMIENTO</th>
                                                    <th id="tblhead_monto" runat="server">MONTO</th>
                                                    <th id="tblhead_moneda" runat="server">MONEDA</th>
                                                    <th id="tblhead_concepto" runat="server">CONCEPTO</th>
                                                    <th id="tblhead_porcentaje_adelanto" runat="server">%ADELANTO</th>
                                                    <th id="tblhead_monto_adelanto" runat="server">ADELANTO</th>
                                                    <th id="tblhead_descuento" runat="server">DESCUENTO</th>
                                                    <th id="tblhead_fecha_desembolso" runat="server">FEC. DESEMBOLSO</th>
                                                    <th id="tblhead_fecha_cobro" runat="server">FEC. COBRO</th>
                                                    <th id="tblhead_dias" runat="server">DIAS</th>
                                                    <th id="tblhead_estado" runat="server">ESTADO</th>
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
                                            <td id="clm_id_factura" runat="server">
                                                <asp:Label ID="lblid_factura" runat="server" Text='<%# Eval("id_factura") %>' /></td>
                                            <td id="clm_proveedor" runat="server">
                                                <asp:Label ID="lblid_proveedor" runat="server" Text='<%# Eval("proveedor") %>' /></td>
                                            <td id="clm_nro_factura" runat="server">
                                                <asp:Label ID="lblnro_factura" runat="server" Text='<%# Eval("nro_factura") %>' /></td>
                                            <td id="clm_cliente" runat="server">
                                                <asp:Label ID="lblid_cliente" runat="server" Text='<%# Eval("cliente") %>' /></td>

                                            <td id="clm_fecha_emision" runat="server">
                                                <asp:Label ID="lblfecha_emision" runat="server" Text='<%# Eval("fecha_emision") %>' /></td>
                                            <td id="clm_fecha_vencimiento" runat="server">
                                                <asp:Label ID="lblfecha_cobro" runat="server" Text='<%# Eval("fecha_vencimiento") %>' /></td>

                                            <td id="clm_monto" runat="server">
                                                <asp:Label ID="lblmonto" runat="server" Text='<%#:string.Format("{0:N0}", Eval("monto")) %>' /></td>
                                            <td id="clm_moneda" runat="server">
                                                <asp:Label ID="lblid_moneda" runat="server" Text='<%# Eval("moneda") %>' /></td>
                                            <td id="clm_concepto" runat="server">
                                                <asp:Label ID="lblconcepto" runat="server" Text='<%# Eval("concepto") %>' /></td>
                                            <td id="clm_porcentaje_adelanto" runat="server">
                                                <asp:Label ID="lblporcentaje_adelanto" runat="server" Text='<%#:string.Format("{0:N2}", Eval("porcentaje_adelanto")) %>' /></td>
                                            <td id="clm_monto_adelanto" runat="server">
                                                <asp:Label ID="lblmonto_adelanto" runat="server" Text='<%#:string.Format("{0:N0}", Eval("monto_adelanto"))  %>' /></td>
                                            <td id="clm_descuento" runat="server">
                                                <asp:Label ID="lbl_descuento" runat="server" Text='<%#:string.Format("{0:N0}", Eval("descuento"))  %>' /></td>
                                            <td id="clm_fecha_desembolso" runat="server">
                                                <asp:Label ID="lblfecha_vencimiento" runat="server" Text='<%# Eval("fecha_desembolso") %>' /></td>
                                            <td id="clm_fecha_cobro" runat="server">
                                                <asp:Label ID="lblfecha_desembolso" runat="server" Text='<%# Eval("fecha_cobro") %>' /></td>
                                            <td id="clm_dias" runat="server">
                                                <asp:Label ID="lbldias" runat="server" Text='<%# Eval("dias") %>' /></td>

                                            <td id="clm_estado" runat="server">
                                                <asp:Label ID="lblestado" runat="server" Text='<%# Eval("estado") %>' /></td>


                                            <td>
                                                <asp:LinkButton runat="server" ID="EditFacturaBtn" CommandName="Editar" CommandArgument='<%# Eval("id_factura")%>' ToolTip="Editar">
                                                    <i class="fa fa-keyboard fa-sm"></i>
                                                </asp:LinkButton>
                                            </td>

                                            <td>
                                                <asp:LinkButton runat="server" ID="RequestFacturaBtn" CommandName="Solicitar" CommandArgument='<%# Eval("id_factura")%>' ToolTip="Quiero factorizar" Visible="false">
                                                    <i class="fas fa-american-sign-language-interpreting"></i>
                                                </asp:LinkButton>
                                                <asp:LinkButton runat="server" ID="FactoringFacturaBtn" CommandName="Factorizar" CommandArgument='<%# Eval("id_factura")%>' ToolTip="Aprobar" Visible="false">
                                                    <i class="fas fa-vote-yea"></i>
                                                </asp:LinkButton>
                                            </td>
                                            <td>
                                                <asp:LinkButton runat="server" ID="DeleteFacturaBtn" CommandName="Eliminar" CommandArgument='<%# Eval("id_factura")%>' ToolTip="Eliminar" OnClientClick="return confirm('Desea eliminar el registro?');">
                                                    <i class="fas fa-trash-alt"></i>
                                                </asp:LinkButton>
                                            </td>
                                        </tr>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                    </EditItemTemplate>
                                    <InsertItemTemplate>
                                    </InsertItemTemplate>
                                    <EmptyDataTemplate>
                                        <div class="row">
                                            <h3><span class="badge badge-warning">No se registran facturas</span></h3>
                                        </div>
                                    </EmptyDataTemplate>
                                </asp:ListView>

                                <!-- #region Modals -->
                                <div id="addModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="addModalLabel" aria-hidden="true">
                                    <div class="modal-dialog modal-lg" role="document">
                                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                            <ContentTemplate>
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <b id="addModalLabel">Agregar un nuevo Factura.</b>
                                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                                    </div>
                                                    <div class="modal-body">
                                                        <asp:FormView ID="InsertFormView" runat="server" DataSourceID="FacturaDS" Width="100%"
                                                            CellPadding="4" DataKeyNames="id_factura" ForeColor="#333333"
                                                            DefaultMode="Insert"
                                                            OnItemInserted="FormView1_ItemInserted">
                                                            <EditItemTemplate>
                                                            </EditItemTemplate>
                                                            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                                            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                                            <InsertItemTemplate>
                                                                <div class="container-fluid">

                                                                    <div class="row">
                                                                        <div class="col-3">PROVEEDOR</div>
                                                                        <div class="col-9">
                                                                            <asp:DropDownList ID="IdProveedorDDL"
                                                                                runat="server"
                                                                                DataSourceID="ProveedorInsertDS_DDL"
                                                                                DataTextField="razon_social"
                                                                                DataValueField="id_proveedor"
                                                                                CssClass="form-control form-control-sm"
                                                                                SelectedValue='<%# Bind("id_proveedor") %>'>
                                                                            </asp:DropDownList>
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">
                                                                        <div class="col-3">CLIENTE</div>
                                                                        <div class="col-9">
                                                                            <asp:DropDownList ID="IdClienteDDL"
                                                                                runat="server"
                                                                                DataSourceID="FacturaInsertDS_DDL"
                                                                                DataTextField="razon_social"
                                                                                DataValueField="id_cliente"
                                                                                CssClass="form-control form-control-sm"
                                                                                SelectedValue='<%# Bind("id_cliente") %>'>
                                                                            </asp:DropDownList>
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">
                                                                        <div class="col-3">
                                                                            NRO. FACTURA
                                                             <asp:RequiredFieldValidator ID="RequiredFieldValidator3"
                                                                 ControlToValidate="txtnro_factura"
                                                                 Display="Static"
                                                                 ErrorMessage="*"
                                                                 runat="server" />
                                                                        </div>
                                                                        <div class="col-9">
                                                                            <asp:TextBox ID="txtnro_factura" runat="server" Text='<%# Bind("nro_factura") %>' CssClass="form-control" Font-Size="X-Small" />
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">
                                                                        <div class="col-3">
                                                                            FEC. EMISIÓN
                                                             <asp:RequiredFieldValidator ID="RequiredFieldValidator1"
                                                                 ControlToValidate="txtfecha_emision"
                                                                 Display="Static"
                                                                 ErrorMessage="*"
                                                                 runat="server" />
                                                                        </div>
                                                                        <div class="col-9">
                                                                            <asp:TextBox ID="txtfecha_emision" runat="server" Text='<%# Bind("fecha_emision") %>' CssClass="form-control" Font-Size="X-Small" TextMode="Date" />
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">
                                                                        <div class="col-3">
                                                                            FEC. VENCIMIENTO
                                                             <asp:RequiredFieldValidator ID="RequiredFieldValidator6"
                                                                 ControlToValidate="txtfecha_vencimiento"
                                                                 Display="Static"
                                                                 ErrorMessage="*"
                                                                 runat="server" />
                                                                        </div>
                                                                        <div class="col-9">
                                                                            <asp:TextBox ID="txtfecha_vencimiento" runat="server" Text='<%# Bind("fecha_vencimiento") %>' CssClass="form-control" Font-Size="X-Small" TextMode="Date" />
                                                                        </div>
                                                                    </div>




                                                                    <div class="row">
                                                                        <div class="col-3">
                                                                            MONTO
                                                              <asp:RequiredFieldValidator ID="RequiredFieldValidator4"
                                                                  ControlToValidate="txtmonto"
                                                                  Display="Static"
                                                                  ErrorMessage="*"
                                                                  runat="server" />
                                                                        </div>
                                                                        <div class="col-9">
                                                                            <asp:TextBox ID="txtmonto" runat="server" Text='<%# Bind("monto") %>' CssClass="form-control" Font-Size="X-Small" TextMode="Number" />
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">
                                                                        <div class="col-3">MONEDA</div>
                                                                        <div class="col-9">
                                                                            <asp:DropDownList ID="IdMonedaDDL"
                                                                                runat="server"
                                                                                DataSourceID="MonedaInsertDS_DDL"
                                                                                DataTextField="moneda"
                                                                                DataValueField="id_moneda"
                                                                                CssClass="form-control form-control-sm"
                                                                                SelectedValue='<%# Bind("id_moneda") %>'>
                                                                            </asp:DropDownList>
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">
                                                                        <div class="col-3">CONCEPTO</div>
                                                                        <div class="col-9">
                                                                            <asp:TextBox ID="txtconcepto" runat="server" Text='<%# Bind("concepto") %>' CssClass="form-control" Font-Size="X-Small" />
                                                                        </div>
                                                                    </div>
                                                                    <%--  <div class="row">
                                                        <div class="col-3">
                                                            %ADELANTO
                                                        </div>
                                                        <div class="col-9">
                                                            <asp:TextBox ID="txtporcentaje_adelanto" runat="server" Text='<%# Bind("porcentaje_adelanto") %>'  CssClass="form-control" Font-Size="X-Small" />
                                                        </div>
                                                    </div>--%>
                                                                    <%-- <div class="row">
                                                        <div class="col-3">
                                                            DESCUENTO
                                                        </div>
                                                        <div class="col-9">
                                                            <asp:TextBox ID="txtdescuento" runat="server" Text='<%# Bind("descuento") %>' CssClass="form-control" Font-Size="X-Small" />
                                                        </div>
                                                    </div>--%>
                                                                </div>

                                                                <hr />
                                                                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Aceptar" CssClass="btn btn-success" />
                                                                <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancelar" Text="Cancelar" CssClass="btn btn-danger" OnClick="CancelButton_Click" />
                                                            </InsertItemTemplate>
                                                            <ItemTemplate>
                                                            </ItemTemplate>



                                                        </asp:FormView>
                                                    </div>
                                                    <div class="modal-footer">
                                                    </div>
                                                </div>
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                    </div>


                                </div>


                                <div id="editModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="addModalLabel" aria-hidden="true">
                                    <div class="modal-dialog modal-lg" role="document">
                                        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                            <ContentTemplate>
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <b id="editModalLabel">Modificar Factura.</b>
                                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                                    </div>
                                                    <div class="modal-body">
                                                        <asp:FormView ID="EditFormView" runat="server" Width="100%"
                                                            CellPadding="4" DataKeyNames="id_factura" ForeColor="#333333"
                                                            DefaultMode="Edit"
                                                            OnModeChanging="EditFormView_ModeChanging" OnItemUpdating="EditFormView_ItemUpdating" OnItemUpdated="EditFormView_ItemUpdated">
                                                            <EditItemTemplate>
                                                                <div class="container-fluid">
                                                                    <div class="row">
                                                                        <div class="col-3">ID</div>
                                                                        <div class="col-9">
                                                                            <asp:TextBox ID="txtid_factura" runat="server" Text='<%# Bind("id_factura") %>' CssClass="form-control" Font-Size="X-Small" Enabled="false" />
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">
                                                                        <div class="col-3"><b>PROVEEDOR</b></div>
                                                                        <div class="col-9">
                                                                            <asp:DropDownList ID="IdProveedorDDL"
                                                                                runat="server"
                                                                                DataSourceID="ProveedorInsertDS_DDL"
                                                                                DataTextField="razon_social"
                                                                                DataValueField="id_proveedor"
                                                                                CssClass="form-control form-control-sm"
                                                                                SelectedValue='<%# Bind("id_proveedor") %>'>
                                                                            </asp:DropDownList>
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">
                                                                        <div class="col-3"><b>CLIENTE</b></div>
                                                                        <div class="col-9">
                                                                            <asp:DropDownList ID="IdClienteDDL"
                                                                                runat="server"
                                                                                DataSourceID="FacturaInsertDS_DDL"
                                                                                DataTextField="razon_social"
                                                                                DataValueField="id_cliente"
                                                                                CssClass="form-control form-control-sm"
                                                                                SelectedValue='<%# Bind("id_cliente") %>'>
                                                                            </asp:DropDownList>
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">
                                                                        <div class="col-3">NRO. FACTURA</div>
                                                                        <div class="col-9">
                                                                            <asp:TextBox ID="txtnro_factura" runat="server" Text='<%# Bind("nro_factura") %>' CssClass="form-control" Font-Size="X-Small" />
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">
                                                                        <div class="col-3">FEC. EMISIÓN</div>
                                                                        <div class="col-9">
                                                                            <asp:TextBox ID="txtfecha_emision" runat="server" Text='<%# Bind("fecha_emision", "{0:yyyy-MM-dd}") %>' CssClass="form-control" Font-Size="X-Small" TextMode="Date" />
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">
                                                                        <div class="col-3">FEC. VENCIMIENTO</div>
                                                                        <div class="col-9">
                                                                            <asp:TextBox ID="txtfecha_vencimiento" runat="server" Text='<%# Bind("fecha_vencimiento", "{0:yyyy-MM-dd}") %>' CssClass="form-control" Font-Size="X-Small" TextMode="Date" />
                                                                        </div>
                                                                    </div>
                                                                    <%--<div class="row">
                                                                        <div class="col-3">FEC. DESEMBOLSO</div>
                                                                        <div class="col-9">
                                                                            <asp:TextBox ID="txtfecha_desembolso" runat="server" Text='<%# Bind("fecha_desembolso", "{0:yyyy-MM-dd}") %>' CssClass="form-control" Font-Size="X-Small" TextMode="Date" Enabled="false" />
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">
                                                                        <div class="col-3">FEC. COBRO</div>
                                                                        <div class="col-9">
                                                                            <asp:TextBox ID="txtfecha_cobro" runat="server" Text='<%# Bind("fecha_cobro", "{0:yyyy-MM-dd}") %>' CssClass="form-control" Font-Size="X-Small" TextMode="Date" />
                                                                        </div>
                                                                    </div>--%>
                                                                    <div class="row">
                                                                        <div class="col-3">MONTO</div>
                                                                        <div class="col-9">
                                                                            <asp:TextBox ID="txtmonto" runat="server" Text='<%# Bind("monto") %>' CssClass="form-control" Font-Size="X-Small" TextMode="Number" />
                                                                        </div>
                                                                    </div>

                                                                    <div class="row">
                                                                        <div class="col-3"><b>MONEDA</b></div>
                                                                        <div class="col-9">
                                                                            <asp:DropDownList ID="IdMonedaDDL"
                                                                                runat="server"
                                                                                DataSourceID="MonedaInsertDS_DDL"
                                                                                DataTextField="moneda"
                                                                                DataValueField="id_moneda"
                                                                                CssClass="form-control form-control-sm"
                                                                                SelectedValue='<%# Bind("id_moneda") %>'>
                                                                            </asp:DropDownList>
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">
                                                                        <div class="col-3">CONCEPTO</div>
                                                                        <div class="col-9">
                                                                            <asp:TextBox ID="txtconcepto" runat="server" Text='<%# Bind("concepto") %>' CssClass="form-control" Font-Size="X-Small" />
                                                                        </div>
                                                                    </div>
                                                                    <%-- <div class="row">
                                                                        <div class="col-3">%ADELANTO</div>
                                                                        <div class="col-9">
                                                                            <asp:TextBox ID="txtporcentaje_adelanto" runat="server" Text='<%# Bind("porcentaje_adelanto") %>' Enabled="false" CssClass="form-control" Font-Size="X-Small" />
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">
                                                                        <div class="col-3">
                                                                            DESCUENTO
                                                                        </div>
                                                                        <div class="col-9">
                                                                            <asp:TextBox ID="txtdescuento" runat="server" Text='<%# Bind("descuento") %>' Enabled="false" CssClass="form-control" Font-Size="X-Small" />
                                                                        </div>
                                                                    </div>--%>
                                                                </div>

                                                                <hr />

                                                                <asp:LinkButton ID="AcceptButton" runat="server" CausesValidation="False" CommandName="Update" Text="Aceptar" CssClass="btn btn-success" />
                                                                <asp:LinkButton ID="CancelButton" runat="server" CausesValidation="False" CommandName="Cancelar" Text="Cancelar" CssClass="btn btn-danger" OnClick="CancelButton_Click" />
                                                            </EditItemTemplate>
                                                            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                                            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                                            <InsertItemTemplate>
                                                            </InsertItemTemplate>
                                                            <ItemTemplate>
                                                            </ItemTemplate>



                                                        </asp:FormView>
                                                    </div>
                                                    <div class="modal-footer">
                                                    </div>
                                                </div>
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                    </div>


                                </div>

                                <!-- #endregion -->

                            </section>
                        </asp:View>


                        <asp:View ID="CobranzasPage" runat="server">
                            <section class="container-fluid">
                                <div class="page-header encabezado small">
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
                                                    <asp:TextBox ID="txtCobranzaSearchKey" runat="server" CssClass="form-control" Font-Size="Small"></asp:TextBox>
                                                </div>
                                                <div class="col-2">
                                                    <asp:DropDownList ID="CobranzaSearchParameterDDL" runat="server" CssClass="form-control" Font-Size="Small">
                                                        <asp:ListItem Text="Cliente" Value="CLIENTE"></asp:ListItem>
                                                        <asp:ListItem Text="Proveedor" Value="PROVEEDOR"></asp:ListItem>
                                                        <asp:ListItem Text="Nro. factura" Value="FACTURA"></asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>

                                                <div class="col-6">
                                                    <div class="btn-group btn-shadow">
                                                        <asp:LinkButton CssClass="btn btn-primary btn-border" runat="server" ID="LinkButton1" onserverclick="SearchBtn_ServerClick" ToolTip="Buscar" Font-Size="Small">
                                                            <div class="form-row">
                                                            <asp:Label Text="Buscar" CssClass="btn-label d-none  d-xl-block d-lg-block" runat="server" Font-Size="Small"></asp:Label>
                                                            <i class="fas fa-search fa-sm" style="padding:5px"></i>
                                                            </div>
                                                        </asp:LinkButton>
                                                    </div>
                                                </div>

                                            </div>
                                        </asp:Panel>
                                    </div>
                                    <div class="row">
                                        <asp:Label ID="Label1" runat="server" Visible="False" CssClass="form-control" />
                                    </div>
                                </div>

                                <div class="row pie small" style="padding-left: 15px">
                                    <asp:DataPager ID="CobranzasDataPager" runat="server" PagedControlID="CobranzasListView" QueryStringField="pageNumber" PageSize="30">
                                        <Fields>
                                            <asp:NextPreviousPagerField ButtonCssClass="btn btn-primary btn-sm" ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" FirstPageText="Primera" />
                                            <asp:NumericPagerField ButtonType="Button" CurrentPageLabelCssClass="btn btn-sm font-weight-bold  border" NextPreviousButtonCssClass="btn btn-default btn-sm" NumericButtonCssClass="btn btn-default btn-sm" />
                                            <asp:NextPreviousPagerField ButtonCssClass="btn btn-primary  btn-sm" ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" LastPageText="Última" />
                                        </Fields>
                                    </asp:DataPager>
                                </div>


                                <asp:ListView ID="CobranzasListView"
                                    runat="server"
                                    DataSourceID="CobranzaDS"
                                    DataKeyNames="id_factura"
                                    OnItemCommand="CobranzasListView_ItemCommand"
                                    OnItemDataBound="CobranzasListView_ItemDataBound">
                                    <LayoutTemplate>
                                        <div class="table table-responsive">
                                            <table class="table table-sm  table-striped  table-hover small">
                                                <caption>
                                                    <h3><span class="badge">FACTURAS</span></h3>
                                                </caption>
                                                <thead class="table-dark" id="tbl_head" runat="server">
                                                    <th id="tblhead_id_factura" runat="server">ID</th>
                                                    <th id="tblhead_proveedor" runat="server">PROVEEDOR</th>
                                                    <th id="tblhead_nro_factura" runat="server">NRO. FACTURA</th>
                                                    <th id="tblhead_cliente" runat="server">CLIENTE</th>

                                                    <th id="tblhead_fecha_vencimiento" runat="server">FEC. VENCIMIENTO</th>
                                                    <th id="tblhead_monto" runat="server">MONTO</th>
                                                    <th id="tblhead_moneda" runat="server">MONEDA</th>

                                                    <th id="tblhead_monto_adelanto" runat="server">ADELANTO</th>
                                                    <th id="tblhead_descuento" runat="server">DESCUENTO</th>
                                                    <th id="tblhead_fecha_desembolso" runat="server">FEC. DESEMBOLSO</th>
                                                    <th id="tblhead_fecha_cobro" runat="server">FEC. COBRO</th>
                                                    <th id="tblhead_estado" runat="server">ESTADO</th>
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
                                            <td id="clm_id_factura" runat="server">
                                                <asp:Label ID="lblid_factura" runat="server" Text='<%# Eval("id_factura") %>' /></td>
                                            <td id="clm_proveedor" runat="server">
                                                <asp:Label ID="lblid_proveedor" runat="server" Text='<%# Eval("proveedor") %>' /></td>
                                            <td id="clm_nro_factura" runat="server">
                                                <asp:Label ID="lblnro_factura" runat="server" Text='<%# Eval("nro_factura") %>' /></td>
                                            <td id="clm_cliente" runat="server">
                                                <asp:Label ID="lblid_cliente" runat="server" Text='<%# Eval("cliente") %>' /></td>
                                            <td id="clm_fecha_vencimiento" runat="server">
                                                <asp:Label ID="lblfecha_vencimiento" runat="server" Text='<%# Eval("fecha_vencimiento") %>' /></td>
                                            <td id="clm_monto" runat="server">
                                                <asp:Label ID="lblmonto" runat="server" Text='<%#:string.Format("{0:N0}", Eval("monto")) %>' /></td>
                                            <td id="clm_moneda" runat="server">
                                                <asp:Label ID="lblid_moneda" runat="server" Text='<%# Eval("moneda") %>' /></td>
                                            <td id="clm_monto_adelanto" runat="server">
                                                <asp:Label ID="lblmonto_adelanto" runat="server" Text='<%#:string.Format("{0:N0}", Eval("monto_adelanto"))  %>' /></td>
                                            <td id="clm_descuento" runat="server">
                                                <asp:Label ID="lbl_descuento" runat="server" Text='<%#:string.Format("{0:N0}", Eval("descuento"))  %>' /></td>
                                            <td id="clm_fecha_desembolso" runat="server">
                                                <asp:Label ID="lblfecha_desembolso" runat="server" Text='<%# Eval("fecha_desembolso") %>' /></td>
                                            <td id="Td1" runat="server">
                                                <asp:Label ID="lblfecha_cobro" runat="server" Text='<%# Eval("fecha_cobro") %>' /></td>
                                            <td id="clm_estado" runat="server">
                                                <asp:Label ID="lblestado" runat="server" Text='<%# Eval("estado") %>' /></td>


                                            <td>
                                                <asp:LinkButton runat="server" ID="EditFacturaBtn" CommandName="Edit" CommandArgument='<%# Eval("id_factura")%>' ToolTip="Editar">
                                                    <i class="fa fa-keyboard fa-sm"></i>
                                                </asp:LinkButton>
                                            </td>

                                            <td>
                                                <asp:LinkButton runat="server" ID="DepositarFacturaBtn" CommandName="Depositar" CommandArgument='<%# Eval("id_factura")%>' ToolTip="Depositar">
                                                     <i class="fa fa-money-bill"></i>
                                                </asp:LinkButton>
                                            </td>
                                            <td>
                                                <asp:LinkButton runat="server" ID="CobrarFacturaBtn" CommandName="Cobrar" CommandArgument='<%# Eval("id_factura")%>' ToolTip="Cobrar">
                                                     <i class="fa-regular fa-credit-card"></i>
                                                </asp:LinkButton>
                                            </td>

                                        </tr>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <td id="clm_id_factura" runat="server">
                                            <asp:Label ID="lblid_factura" runat="server" Text='<%# Bind("id_factura") %>' /></td>
                                        <td id="clm_proveedor" runat="server">
                                            <asp:Label ID="lblid_proveedor" runat="server" Text='<%# Eval("proveedor") %>' /></td>
                                        <td id="clm_nro_factura" runat="server">
                                            <asp:Label ID="lblnro_factura" runat="server" Text='<%# Eval("nro_factura") %>' /></td>
                                        <td id="clm_cliente" runat="server">
                                            <asp:Label ID="lblid_cliente" runat="server" Text='<%# Eval("cliente") %>' /></td>
                                        <td id="clm_fecha_vencimiento" runat="server">
                                            <asp:Label ID="lblfecha_vencimiento" runat="server" Text='<%# Eval("fecha_vencimiento") %>' />
                                        </td>
                                        <td id="clm_monto" runat="server">
                                            <asp:Label ID="lblmonto" runat="server" Text='<%#:string.Format("{0:N0}", Eval("monto")) %>' /></td>
                                        <td id="clm_moneda" runat="server">
                                            <asp:Label ID="lblid_moneda" runat="server" Text='<%# Eval("moneda") %>' /></td>
                                        <td id="clm_monto_adelanto" runat="server">
                                            <asp:Label ID="lblmonto_adelanto" runat="server" Text='<%#:string.Format("{0:N0}", Eval("monto_adelanto"))  %>' /></td>
                                        <td id="clm_descuento" runat="server">
                                            <asp:Label ID="lbl_descuento" runat="server" Text='<%#:string.Format("{0:N0}", Eval("descuento"))  %>' /></td>
                                        <td id="clm_fecha_desembolso" runat="server">
                                            <asp:TextBox ID="lblfecha_desembolso" runat="server" Text='<%# Bind("fecha_desembolso") %>' TextMode="Date" /></td>
                                        <td id="Td2" runat="server">
                                            <asp:TextBox ID="lblfecha_cobro" runat="server" Text='<%# Bind("fecha_cobro") %>' TextMode="Date" /></td>
                                        <td id="clm_estado" runat="server">
                                            <asp:Label ID="lblestado" runat="server" Text='<%# Eval("estado") %>' /></td>


                                        <td>
                                            <asp:LinkButton runat="server" ID="EditFacturaBtn" CommandName="Update" CommandArgument='<%# Eval("id_factura")%>' ToolTip="Aceptar">
                                                    <i class="fa fa-check fa-sm"></i>
                                            </asp:LinkButton>
                                        </td>

                                        <td>
                                            <asp:LinkButton runat="server" ID="DepositarFacturaBtn" CommandName="Cancel" CommandArgument='<%# Eval("id_factura")%>' ToolTip="Cencelar">
                                                     <i class="fa fa-ban"></i>
                                            </asp:LinkButton>
                                        </td>

                                    </EditItemTemplate>
                                    <InsertItemTemplate>
                                    </InsertItemTemplate>
                                </asp:ListView>



                            </section>
                        </asp:View>


                        <asp:View ID="ConciliacionesPage" runat="server">
                            <section class="container-fluid">
                                <div class="page-header encabezado small">
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
                                                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" Font-Size="Small"></asp:TextBox>
                                                </div>
                                                <div class="col-2">
                                                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" Font-Size="Small">
                                                        <asp:ListItem Text="Cliente" Value="CLIENTE"></asp:ListItem>
                                                        <asp:ListItem Text="Proveedor" Value="PROVEEDOR"></asp:ListItem>
                                                        <asp:ListItem Text="Nro. factura" Value="FACTURA"></asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>

                                                <div class="col-6">
                                                    <div class="btn-group btn-shadow">
                                                        <asp:LinkButton CssClass="btn btn-primary btn-border" runat="server" ID="LinkButton2" onserverclick="SearchBtn_ServerClick" ToolTip="Buscar" Font-Size="Small">
                                                            <div class="form-row">
                                                            <asp:Label Text="Buscar" CssClass="btn-label d-none  d-xl-block d-lg-block" runat="server" Font-Size="Small"></asp:Label>
                                                            <i class="fas fa-search fa-sm" style="padding:5px"></i>
                                                            </div>
                                                        </asp:LinkButton>
                                                    </div>
                                                </div>

                                            </div>
                                        </asp:Panel>
                                    </div>
                                    <div class="row">
                                        <asp:Label ID="Label2" runat="server" Visible="False" CssClass="form-control" />
                                    </div>
                                </div>

                                <div class="row pie small" style="padding-left: 15px">
                                    <asp:DataPager ID="DataPager1" runat="server" PagedControlID="CobranzasListView" QueryStringField="pageNumber" PageSize="30">
                                        <Fields>
                                            <asp:NextPreviousPagerField ButtonCssClass="btn btn-primary btn-sm" ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" FirstPageText="Primera" />
                                            <asp:NumericPagerField ButtonType="Button" CurrentPageLabelCssClass="btn btn-sm font-weight-bold  border" NextPreviousButtonCssClass="btn btn-default btn-sm" NumericButtonCssClass="btn btn-default btn-sm" />
                                            <asp:NextPreviousPagerField ButtonCssClass="btn btn-primary  btn-sm" ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" LastPageText="Última" />
                                        </Fields>
                                    </asp:DataPager>
                                </div>


                                <asp:ListView ID="ConciliacionesListView"
                                    runat="server"
                                    DataSourceID="ConciliacionDS"
                                    DataKeyNames="id_factura">
                                    <LayoutTemplate>
                                        <div class="table table-responsive">
                                            <table class="table table-sm  table-striped  table-hover small">
                                                <caption>
                                                    <h3><span class="badge">FACTURAS</span></h3>
                                                </caption>
                                                <thead class="table-dark" id="tbl_head" runat="server">
                                                    <th id="tblhead_id_factura" runat="server">ID</th>
                                                    <th id="tblhead_proveedor" runat="server">PROVEEDOR</th>
                                                    <th id="tblhead_nro_factura" runat="server">NRO. FACTURA</th>
                                                    <th id="tblhead_cliente" runat="server">CLIENTE</th>

                                                    <th id="tblhead_fecha_vencimiento" runat="server">FEC. VENCIMIENTO</th>
                                                    <th id="tblhead_monto" runat="server">MONTO</th>
                                                    <th id="tblhead_moneda" runat="server">MONEDA</th>

                                                    <th id="tblhead_monto_adelanto" runat="server">ADELANTO</th>
                                                    <th id="tblhead_descuento" runat="server">DESCUENTO</th>
                                                    <th id="tblhead_fecha_desembolso" runat="server">FEC. DESEMBOLSO</th>
                                                    <th id="tblhead_fecha_cobro" runat="server">FEC. COBRO</th>
                                                    <th id="tbl_diferencia" runat="server">DIFERENCIA</th>
                                                    <th id="tblhead_estado" runat="server">ESTADO</th>


                                                </thead>
                                                <tbody>
                                                    <tr runat="server" id="itemPlaceholder" />
                                                </tbody>
                                            </table>
                                        </div>
                                    </LayoutTemplate>
                                    <ItemTemplate>
                                        <tr>
                                            <td id="clm_id_factura" runat="server">
                                                <asp:Label ID="lblid_factura" runat="server" Text='<%# Eval("id_factura") %>' /></td>
                                            <td id="clm_proveedor" runat="server">
                                                <asp:Label ID="lblid_proveedor" runat="server" Text='<%# Eval("proveedor") %>' /></td>
                                            <td id="clm_nro_factura" runat="server">
                                                <asp:Label ID="lblnro_factura" runat="server" Text='<%# Eval("nro_factura") %>' /></td>
                                            <td id="clm_cliente" runat="server">
                                                <asp:Label ID="lblid_cliente" runat="server" Text='<%# Eval("cliente") %>' /></td>
                                            <td id="clm_fecha_vencimiento" runat="server">
                                                <asp:Label ID="lblfecha_vencimiento" runat="server" Text='<%# Eval("fecha_vencimiento") %>' /></td>
                                            <td id="clm_monto" runat="server">
                                                <asp:Label ID="lblmonto" runat="server" Text='<%#:string.Format("{0:N0}", Eval("monto")) %>' /></td>
                                            <td id="clm_moneda" runat="server">
                                                <asp:Label ID="lblid_moneda" runat="server" Text='<%# Eval("moneda") %>' /></td>
                                            <td id="clm_monto_adelanto" runat="server">
                                                <asp:Label ID="lblmonto_adelanto" runat="server" Text='<%#:string.Format("{0:N0}", Eval("monto_adelanto"))  %>' /></td>
                                            <td id="clm_descuento" runat="server">
                                                <asp:Label ID="lbl_descuento" runat="server" Text='<%#:string.Format("{0:N0}", Eval("descuento"))  %>' /></td>
                                            <td id="clm_fecha_desembolso" runat="server">
                                                <asp:Label ID="lblfecha_desembolso" runat="server" Text='<%# Eval("fecha_desembolso") %>' /></td>
                                            <td id="Td1" runat="server">
                                                <asp:Label ID="lblfecha_cobro" runat="server" Text='<%# Eval("fecha_cobro") %>' /></td>
                                            <td id="Td3" runat="server">
                                                <asp:Label ID="Label3" runat="server" Text='<%#:string.Format("{0:N0}", Eval("diferencia"))  %>' /></td>
                                            <td id="clm_estado" runat="server">
                                                <asp:Label ID="lblestado" runat="server" Text='<%# Eval("estado") %>' /></td>







                                        </tr>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <td id="clm_id_factura" runat="server">
                                            <asp:Label ID="lblid_factura" runat="server" Text='<%# Bind("id_factura") %>' /></td>
                                        <td id="clm_proveedor" runat="server">
                                            <asp:Label ID="lblid_proveedor" runat="server" Text='<%# Eval("proveedor") %>' /></td>
                                        <td id="clm_nro_factura" runat="server">
                                            <asp:Label ID="lblnro_factura" runat="server" Text='<%# Eval("nro_factura") %>' /></td>
                                        <td id="clm_cliente" runat="server">
                                            <asp:Label ID="lblid_cliente" runat="server" Text='<%# Eval("cliente") %>' /></td>
                                        <td id="clm_fecha_vencimiento" runat="server">
                                            <asp:Label ID="lblfecha_vencimiento" runat="server" Text='<%# Eval("fecha_vencimiento") %>' />
                                        </td>
                                        <td id="clm_monto" runat="server">
                                            <asp:Label ID="lblmonto" runat="server" Text='<%#:string.Format("{0:N0}", Eval("monto")) %>' /></td>
                                        <td id="clm_moneda" runat="server">
                                            <asp:Label ID="lblid_moneda" runat="server" Text='<%# Eval("moneda") %>' /></td>
                                        <td id="clm_monto_adelanto" runat="server">
                                            <asp:Label ID="lblmonto_adelanto" runat="server" Text='<%#:string.Format("{0:N0}", Eval("monto_adelanto"))  %>' /></td>
                                        <td id="clm_descuento" runat="server">
                                            <asp:Label ID="lbl_descuento" runat="server" Text='<%#:string.Format("{0:N0}", Eval("descuento"))  %>' /></td>
                                        <td id="clm_fecha_desembolso" runat="server">
                                            <asp:TextBox ID="lblfecha_desembolso" runat="server" Text='<%# Bind("fecha_desembolso") %>' TextMode="Date" /></td>
                                        <td id="Td2" runat="server">
                                            <asp:TextBox ID="lblfecha_cobro" runat="server" Text='<%# Bind("fecha_cobro") %>' TextMode="Date" /></td>
                                        <td id="clm_estado" runat="server">
                                            <asp:Label ID="lblestado" runat="server" Text='<%# Eval("estado") %>' /></td>



                                    </EditItemTemplate>
                                    <InsertItemTemplate>
                                    </InsertItemTemplate>
                                </asp:ListView>



                            </section>
                        </asp:View>

                    </asp:MultiView>
                </div>

                <!-- #region DataSources -->
                <asp:SqlDataSource ID="FacturaDS"
                    runat="server" ConnectionString="<%$ ConnectionStrings:AlmacenesConnectionString %>"
                    InsertCommand="go.sp_FacturaS_insert" InsertCommandType="StoredProcedure"
                    SelectCommand="go.sp_Facturas_get_all" SelectCommandType="StoredProcedure">
                    <DeleteParameters>
                        <asp:Parameter Name="id_factura" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="id_proveedor" Type="Int32" />
                        <asp:Parameter Name="id_cliente" Type="Int32" />
                        <asp:Parameter Name="nro_factura" Type="String" />
                        <asp:Parameter Name="fecha_emision" Type="DateTime" />
                        <asp:Parameter Name="fecha_cobro" Type="DateTime" />
                        <asp:Parameter Name="monto" Type="Decimal" />
                        <asp:Parameter Name="id_moneda" Type="Int32" />
                        <asp:Parameter Name="concepto" Type="String" />
                        <asp:Parameter Name="porcentaje_adelanto" Type="Decimal" DefaultValue="0" />
                        <asp:Parameter Name="fecha_vencimiento" Type="DateTime" />
                        <asp:Parameter Name="fecha_desembolso" Type="DateTime" />
                        <asp:Parameter Name="descuento" Type="Decimal" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="id_factura" Type="Int32" />
                        <asp:Parameter Name="id_proveedor" Type="Int32" />
                        <asp:Parameter Name="id_cliente" Type="Int32" />
                        <asp:Parameter Name="nro_factura" Type="String" />
                        <asp:Parameter Name="fecha_emision" Type="DateTime" />
                        <asp:Parameter Name="fecha_cobro" Type="DateTime" />
                        <asp:Parameter Name="monto" Type="Decimal" />
                        <asp:Parameter Name="id_moneda" Type="Int32" />
                        <asp:Parameter Name="concepto" Type="String" />
                        <asp:Parameter Name="porcentaje_adelanto" Type="Decimal" />
                        <asp:Parameter Name="fecha_vencimiento" Type="DateTime" />
                        <asp:Parameter Name="fecha_desembolso" Type="DateTime" />
                        <asp:Parameter Name="descuento" Type="Decimal" />
                    </UpdateParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="txtSearchKey" PropertyName="Text" Name="key" DefaultValue="*" />
                        <asp:ControlParameter ControlID="searchParameterDDL" PropertyName="SelectedValue" Name="parameter" />
                        <asp:ControlParameter ControlID="lblState" PropertyName="Text" Name="state" />
                        <asp:SessionParameter SessionField="USERNAME" Name="user" DbType="String" />
                    </SelectParameters>
                </asp:SqlDataSource>

                <asp:SqlDataSource ID="FacturaInsertDS_DDL" runat="server" ConnectionString="<%$ ConnectionStrings:AlmacenesConnectionString %>"
                    SelectCommand="select id_cliente, razon_social from go.clientes  order by razon_social " SelectCommandType="Text"></asp:SqlDataSource>

                <asp:SqlDataSource ID="ProveedorInsertDS_DDL" runat="server" ConnectionString="<%$ ConnectionStrings:AlmacenesConnectionString %>"
                    SelectCommand="select id_proveedor, razon_social from go.proveedores  order by razon_social " SelectCommandType="Text"></asp:SqlDataSource>

                <asp:SqlDataSource ID="MonedaInsertDS_DDL" runat="server" ConnectionString="<%$ ConnectionStrings:AlmacenesConnectionString %>"
                    SelectCommand="select id_moneda, moneda from go.monedas  order by moneda " SelectCommandType="Text"></asp:SqlDataSource>



                <asp:SqlDataSource ID="CobranzaDS"
                    runat="server" ConnectionString="<%$ ConnectionStrings:AlmacenesConnectionString %>"
                    SelectCommand="go.sp_Facturas_get_all" SelectCommandType="StoredProcedure"
                    UpdateCommand="update go.facturas set fecha_desembolso = @fecha_desembolso, fecha_cobro = @fecha_cobro  where id_factura = @id_factura" UpdateCommandType="Text">

                    <UpdateParameters>
                        <asp:Parameter Name="id_factura" Type="Int32" />
                        <asp:Parameter Name="fecha_desembolso" Type="DateTime" />
                        <asp:Parameter Name="fecha_cobro" Type="DateTime" />
                    </UpdateParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="txtCobranzaSearchKey" PropertyName="Text" Name="key" DefaultValue="*" />
                        <asp:ControlParameter ControlID="CobranzaSearchParameterDDL" PropertyName="SelectedValue" Name="parameter" />
                        <asp:ControlParameter ControlID="lblState" PropertyName="Text" Name="state" />
                        <asp:SessionParameter SessionField="USERNAME" Name="user" DbType="String" />
                    </SelectParameters>
                </asp:SqlDataSource>


                <asp:SqlDataSource ID="ConciliacionDS"
                    runat="server" ConnectionString="<%$ ConnectionStrings:AlmacenesConnectionString %>"
                    SelectCommand="go.sp_Facturas_get_all" SelectCommandType="StoredProcedure">

                    <UpdateParameters>
                        <asp:Parameter Name="id_factura" Type="Int32" />
                        <asp:Parameter Name="fecha_desembolso" Type="DateTime" />
                        <asp:Parameter Name="fecha_cobro" Type="DateTime" />
                    </UpdateParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="txtCobranzaSearchKey" PropertyName="Text" Name="key" DefaultValue="*" />
                        <asp:ControlParameter ControlID="CobranzaSearchParameterDDL" PropertyName="SelectedValue" Name="parameter" />
                        <asp:ControlParameter ControlID="lblState" PropertyName="Text" Name="state" />
                        <asp:SessionParameter SessionField="USERNAME" Name="user" DbType="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
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
                    const { id_factura, razon_social, ruc, fecha_alta, direccion } = invoice;

                    innerBodyHtml = innerBodyHtml + `<tr> <td>${id_factura}</td> <td>${ruc}</td> <td>${razon_social}</td>     <td type='date'>${fecha_alta}</td> <td>${direccion}</td>   <td><a href="/Proveedores.html?client=${id_factura}" class="button">Ver proveedores</a></td>  <tr>`;
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

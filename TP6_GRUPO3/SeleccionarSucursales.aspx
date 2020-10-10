<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SeleccionarSucursales.aspx.cs" Inherits="TP6_GRUPO3.SeleccionarSucursales" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 73px;
        }
        .auto-style4 {
            width: 73px;
            height: 175px;
        }
        .auto-style7 {
            width: 19px;
        }
        .auto-style8 {
            width: 19px;
            height: 175px;
        }
        .auto-style9 {
            width: 199px;
        }
        .auto-style10 {
            height: 175px;
            width: 199px;
        }
        .auto-style18 {
            width: 73px;
            height: 33px;
        }
        .auto-style20 {
            width: 19px;
            height: 33px;
        }
        .auto-style21 {
            height: 33px;
            width: 199px;
        }
        .auto-style24 {
            width: 92px;
        }
        .auto-style25 {
            height: 33px;
            width: 92px;
        }
        .auto-style26 {
            height: 175px;
            width: 92px;
        }
        .auto-style27 {
            width: 224px;
        }
        .auto-style28 {
            height: 33px;
            width: 224px;
        }
        .auto-style29 {
            height: 175px;
            width: 224px;
        }
        .auto-style30 {
            width: 16px;
        }
        .auto-style31 {
            height: 33px;
            width: 16px;
        }
        .auto-style32 {
            height: 175px;
            width: 16px;
        }
        .auto-style33 {
            width: 185px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">Grupo N°3:</td>
                    <td class="auto-style24">Scarpato Wanda</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style9">
                        <asp:HyperLink ID="HyperLink" runat="server" NavigateUrl="~/ListadoSucursalesSeleccionados.aspx.designer.cs">Listado de sucursales</asp:HyperLink>
                    </td>
                    <td class="auto-style27">
                        <asp:HyperLink ID="HyperLink1" runat="server">Mostrar sucursales seleccionadas</asp:HyperLink>
                    </td>
                    <td class="auto-style30">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style24">Lopez Adriel</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style27">&nbsp;</td>
                    <td class="auto-style30">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style24">Graus Matias</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style27">&nbsp;</td>
                    <td class="auto-style30">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style24">Segovia Lucas</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style27">&nbsp;</td>
                    <td class="auto-style30">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style24">Baena Dalila</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style9">
                        <asp:Label ID="lblListado" runat="server" Font-Bold="True" Font-Size="Large" Text="Listado de sucursales"></asp:Label>
                    </td>
                    <td class="auto-style27">&nbsp;</td>
                    <td class="auto-style30">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style18"></td>
                    <td class="auto-style25"></td>
                    <td class="auto-style20"></td>
                    <td class="auto-style21">&nbsp;</td>
                    <td class="auto-style28"></td>
                    <td class="auto-style31"></td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style26">
                        <asp:DataList ID="dlProvincias" runat="server">
                            <ItemTemplate>
                                <asp:Button ID="btnProv" runat="server" Text='<%# Bind("DescripcionProvincia") %>' />
                                <br />
                            </ItemTemplate>
                        </asp:DataList>
                    </td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style10">
                        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" GroupItemCount="3">
                           <%-- <AlternatingItemTemplate>
                                <td runat="server" style="background-color:#FFF8DC;">NombreSucursal:
                                    <asp:Label ID="NombreSucursalLabel" runat="server" Text='<%# Eval("NombreSucursal") %>' />
                                    <br />DescripcionSucursal:
                                    <asp:Label ID="DescripcionSucursalLabel" runat="server" Text='<%# Eval("DescripcionSucursal") %>' />
                                    <br />URL_Imagen_Sucursal:
                                    <asp:Label ID="URL_Imagen_SucursalLabel" runat="server" Text='<%# Eval("URL_Imagen_Sucursal") %>' />
                                    <br /></td>
                            </AlternatingItemTemplate>--%>
                            <EditItemTemplate>
                                <td runat="server" style="background-color:#008A8C;color: #FFFFFF;">NombreSucursal:
                                    <asp:TextBox ID="NombreSucursalTextBox" runat="server" Text='<%# Bind("NombreSucursal") %>' />
                                    <br />DescripcionSucursal:
                                    <asp:TextBox ID="DescripcionSucursalTextBox" runat="server" Text='<%# Bind("DescripcionSucursal") %>' />
                                    <br />URL_Imagen_Sucursal:
                                    <asp:TextBox ID="URL_Imagen_SucursalTextBox" runat="server" Text='<%# Bind("URL_Imagen_Sucursal") %>' />
                                    <br />
                                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Actualizar" />
                                    <br />
                                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancelar" />
                                    <br /></td>
                            </EditItemTemplate>
                            <EmptyDataTemplate>
                                <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                                    <tr>
                                        <td>No se han devuelto datos.</td>
                                    </tr>
                                </table>
                            </EmptyDataTemplate>
                            <EmptyItemTemplate>
<td runat="server" />
                            </EmptyItemTemplate>
                            <GroupTemplate>
                                <tr id="itemPlaceholderContainer" runat="server">
                                    <td id="itemPlaceholder" runat="server"></td>
                                </tr>
                            </GroupTemplate>
                            <InsertItemTemplate>
                                <td runat="server" style="">NombreSucursal:
                                    <asp:TextBox ID="NombreSucursalTextBox" runat="server" Text='<%# Bind("NombreSucursal") %>' />
                                    <br />DescripcionSucursal:
                                    <asp:TextBox ID="DescripcionSucursalTextBox" runat="server" Text='<%# Bind("DescripcionSucursal") %>' />
                                    <br />URL_Imagen_Sucursal:
                                    <asp:TextBox ID="URL_Imagen_SucursalTextBox" runat="server" Text='<%# Bind("URL_Imagen_Sucursal") %>' />
                                    <br />
                                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insertar" />
                                    <br />
                                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Borrar" />
                                    <br /></td>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <td runat="server" style="background-color:#DCDCDC;color: #000000;" class="auto-style33">
                                    <asp:Label ID="lblSucursal" runat="server" Text='<%# Eval("NombreSucursal") %>' Font-Bold="True" style="text-align:left"></asp:Label>
                                    <br />
                                    <asp:Image ID="imgSucursal" runat="server" Height="150px" Width="150px" ImageAlign="TextTop" ImageUrl='<%# Eval("URL_Imagen_Sucursal") %>' />
                                    <br />
                                    <asp:Label ID="lblDescripcion" runat="server" Text='<%# Eval("DescripcionSucursal") %>' Font-Size="Small"></asp:Label>
                                    <br />
                                    <asp:Button ID="btnSelecc" runat="server" Text="Seleccionar" Width="133px" CommandArgument='<%# /*Eval("Id_Sucursal")+"-"+*/Eval("NombreSucursal")+"-"+Eval("DescripcionSucursal") %>' CommandName="eventoSeleccionar" OnCommand="btnSelecc_Command" />
                                </td>
                            </ItemTemplate>
                            <LayoutTemplate>
                                <table runat="server">
                                    <tr runat="server">
                                        <td runat="server">
                                            <table id="groupPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                                <tr id="groupPlaceholder" runat="server">
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr runat="server">
                                        <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                                            <asp:DataPager ID="DataPager1" runat="server" PageSize="6">
                                                <Fields>
                                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                                    <asp:NumericPagerField />
                                                    <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                                </Fields>
                                            </asp:DataPager>
                                        </td>
                                    </tr>
                                </table>
                            </LayoutTemplate>
                            <SelectedItemTemplate>
                                <td runat="server" style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">NombreSucursal:
                                    <asp:Label ID="NombreSucursalLabel" runat="server" Text='<%# Eval("NombreSucursal") %>' />
                                    <br />DescripcionSucursal:
                                    <asp:Label ID="DescripcionSucursalLabel" runat="server" Text='<%# Eval("DescripcionSucursal") %>' />
                                    <br />URL_Imagen_Sucursal:
                                    <asp:Label ID="URL_Imagen_SucursalLabel" runat="server" Text='<%# Eval("URL_Imagen_Sucursal") %>' />
                                    <br /></td>
                            </SelectedItemTemplate>
                        </asp:ListView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BDSucursalesConnectionString5 %>" SelectCommand="SELECT [NombreSucursal], [DescripcionSucursal], [URL_Imagen_Sucursal] FROM [Sucursal]"></asp:SqlDataSource>
                    </td>
                    <td class="auto-style29">&nbsp;</td>
                    <td class="auto-style32">&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

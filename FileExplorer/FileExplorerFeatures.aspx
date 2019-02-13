<%@ Page Language="C#" MasterPageFile="~/Site.Master" Title="FileExplorer" AutoEventWireup="true" CodeBehind="FileExplorerFeatures.aspx.cs" Inherits="SyncfusionASPNETApplication11.FileExplorerFeatures" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<h2>FileExplorer with support to open video format files with ejMediaPlayer</h2>
<br />
     <div id="ControlRegion">
        <ej:FileExplorer ID="fileexplorer1" runat="server" CssClass="myFileBrowser" IsResponsive="true" Width="100%" AjaxAction="FileExplorerFeatures.aspx/FileActionDefault" Path="~/content/images/FileExplorer/" ClientSideOnBeforeOpen="beforeOpen" Layout="Tile">
        </ej:FileExplorer>
        <ej:Dialog ID="dialog" runat="server" ShowOnInit="false" ClientIDMode="Static" Width="400px" Height="350px">
            <DialogContent>
                <div id="basicPlayer"></div>
            </DialogContent>
        </ej:Dialog>
        <script>    
            function beforeOpen(args) {
                if (args.itemType == "File" && (/\.(mp4)$/i).test(this._selectedFile)) {
                    var dialogObj = $("#dialog").ejDialog("instance");
                    dialogObj.open();
                    $("#basicPlayer").ejMediaPlayer({
                        source: [
                            {
                                "url": args.path,
                                "title": "Internet of things",
                                "author": "Syncfusion",
                                "posterUrl": "images/mediaplayer/IOT.mp4"
                            }]
                    });
                }
            }
        </script>
    </div>
</asp:Content>

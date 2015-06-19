<%--
  Created by IntelliJ IDEA.
  User: amila
  Date: 6/19/15
  Time: 12:17 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <title></title>
</head>

<body>

    <table class="table table-striped table-bordered">
        <thead>
        <tr>
            <th>Action</th>
            <th></th>
        </tr>
        </thead>
        <tbody>
            <tr>
                <td>
                    givePromotions
                </td>
                <td>
                    <g:link class="btn btn-success btn-xs" controller="bank" action="givePromotions" ><i class="icon-cog icon-white"></i> Go</g:link>
                </td>
            </tr>
            <tr>
                <td>
                    viewFinancialInfo
                </td>
                <td>
                    <g:link class="btn btn-success btn-xs" controller="bank" action="viewFinancialInfo" ><i class="icon-cog icon-white"></i> Go</g:link>
                </td>
            </tr>
            <tr>
                <td>
                    viewCustomer
                </td>
                <td>
                    <g:link class="btn btn-success btn-xs" controller="bank" action="viewCustomer" ><i class="icon-cog icon-white"></i> Go</g:link>
                </td>
            </tr>
            <tr>
                <td>
                    doRecruitement
                </td>
                <td>
                    <g:link class="btn btn-success btn-xs" controller="bank" action="doRecruitement" ><i class="icon-cog icon-white"></i> Go</g:link>
                </td>
            </tr>
            <tr>
                <td>
                    viewPublicNotices
                </td>
                <td>
                    <g:link class="btn btn-success btn-xs" controller="bank" action="viewPublicNotices" ><i class="icon-cog icon-white"></i> Go</g:link>
                </td>
            </tr>
        </tbody>
    </table>
</body>
</html>
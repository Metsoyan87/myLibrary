
<%@ page import="java.util.List" %>
<%@ page import="model.Book" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All books</title>
</head>
<body>

<%
    List<Book> books = (List<Book>) request.getAttribute("books");

%>

<table border="1">

    <tr>
        <th>id</th>
        <th>title</th>
        <th>description</th>
        <th>price</th>
        <th>author name</th>
        <th>action</th>
        <th>action</th>
    </tr>

    <% for (Book book : books) { %>

    <tr>
        <td><%=book.getId()%>
        </td>
        <td><%=book.getTitle()%>
        </td>
        <td><%=book.getDescription()%>
        </td>
        <td><%=book.getPrice()%>
        </td>
        <td><%=book.getAuthor().getName()%>
        </td>

        <td><a href = "/books/remove?bookId=<%=book.getId()%>">Remove</a>
        <td><a href = "/books/edit?bookId=<%=book.getId()%>">Edit</a>
        </td>
    </tr>

    <%}%>

</table>
</body>
</html>

<html>
<body>
    <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="{{_csrf.token}}"/>
        <input type="submit" value="Sign Out"/>
    </form>
    <div>
        <form method="post">
            <input type="hidden" name="_csrf" value="{{_csrf.token}}"/>
            <input type="text" name="text" placeholder="Enter a message"/>
            <input type="text" name="tag" placeholder="Tag"/>
            <button type="submit">Add</button>
        </form>
    </div>
    <div>
        <form method="post" action="filter">
            <input type="hidden" name="_csrf" value="{{_csrf.token}}"/>
            <input type="text" name="filter"/>
            <button type="submit">Find</button>
        </form>
    </div>
    <div>List of messages</div>
    {{#messages}}
        <div>
            <b>{{id}}</b>
            <span>{{text}}</span>
            <i>{{tag}}</i>
            <strong>{{authorName}}</strong>
        </div>
    {{/messages}}
</body>
</html>
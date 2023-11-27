const fetchData = function() {
    fetch('http://13.127.14.251:8081/api/data')
        .then((response) => response.json())
        .then((json) => {
            const tbody = document.querySelector('#tbody');
            tbody.innerHTML = `${json.map((user) => `<tr>
                <td>${user.id}</td>
                <td>${user.name}</td>
                <td>${user.gender}</td>
                <td>${user.class}</td>
                <td>${user.mark}</td>

            </tr>`).join('')}`;
        })
        .catch((error) => console.error('Error:', error));
};

window.addEventListener('load', fetchData);

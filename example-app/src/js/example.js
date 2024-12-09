import { AuthSSO } from 'capacitor-hybrid-vnptid';

window.testEcho = () => {
    const inputValue = document.getElementById("echoInput").value;
    AuthSSO.echo({ value: inputValue })
}

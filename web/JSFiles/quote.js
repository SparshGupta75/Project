/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
window.addEventListener("load", async function (e) {
    const res = await axios.get(`https://type.fit/api/quotes`);
    const randd = Math.floor(Math.random() * 1642) + 1;
    console.dir(res);
    console.log(res.data[randd].text);
    if (res.data[randd].author === null)
    {
        console.log('Anonymous');
    } else
    {
        console.log(res.data[randd].author);
    }
    const quote = document.createElement("blockquote");
    const para = document.createElement("p");
    const footer = document.createElement("footer");
    const cite = document.createElement("cite");
    cite.title = "Source Title";
    const ans = "Anonymous";
    const auth = res.data[randd].author;
    if (!auth)
    {
        cite.append('Anonymous');
    } else
    {
        cite.append(auth);
    }
    footer.append(cite);
    console.log(cite);
    footer.classList.add("blockquote-footer");

    para.append(res.data[randd].text);
    quote.append(para);
    quote.append(footer);
    motivation.append(quote);
    console.log(motivation);
});


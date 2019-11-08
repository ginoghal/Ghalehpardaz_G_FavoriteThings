// this is a partially revealing module pattern - just a variation on what we've already done

const myVM = (() => {

    let userButtons = document.querySelectorAll('.u-link'),
    lightbox = document.querySelector('.lightbox');

    function renderSocialMedia(socialMedia){
        return `<ul class="u-social">
        ${socialMedia.map(item => `<li>${item}</li>`).join('')}
      
        </ul>`
    }

    function parseUserData(person){
        let targetDiv = document.querySelector('.lb-content'),
        targetImg = lightbox.querySelector('img');

        let biocontent = `
        <p>${person.bio}</p>
        <h4>Social Media:</h4>

        `;

        console.log(bioContent);
        targetDiv.innerHTML = bioContent;
        targetImg.src = person.imgsrc;

        lightbox.classList.add('show-bj');
    }

    function getUserData(event){
        event.preventDefault();

        let imgSrc = this.previousElementSibling.getAttribute('src');

        let url = `/users/${this.getAttribute('href')}`;

        fetch(url)
        .then(res => res.json())
        .then(data =>{
            console.log("my database result is: ", data)

            data[0].imgsrc = imgSrc;
            parseUserData(data[0]);
        })
        .catch((err) =>{
        console.log(err)
        });


        
    }
    userButtons.forEach(button => button.addEventListener('click', getUserData));
    lightbox.querySelector('.close').addEventListener('click', function(){
        lightbox.classList.remove('show-lb');
    });
    })();
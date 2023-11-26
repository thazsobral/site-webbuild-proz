const funcionarios = [
    {
        img: "tayrone.jpg",
        altImage: "Foto do Tayrone Carvalho Machado, membro da Webuild, pessoa parda com cabelo preto e barba grande",
        bio: "Formado em Processos Gerenciais e com vários cursos na área de tecnologia, desde ferramentas cotidianas, a linguagens de programação, tendo o foco no desenvolvimento front-end com o uso de HTML/CSS/JS. Mesclando os conhecimentos em gerenciamento de negócios e desenvolvimento para poder entregar o melhor resultado ao cliente.",
        github: "tayrone42",
        linkedin: "tayrone-machado",
        facebook: "tayrone.carvalho"
    },
    {
        img: "foto-thalles.jpg",
        altImage: "foto do membro",
        bio: "Pai, entusiasta de tecnologia, programador e viciado em resolver problemas. Possuo conhecimento em técnologias front-end e back-end, além de ter experiência com diversas ferramentas de desenvolvimento. Tenho como missão, resolver problemas complexos de forma simples e desenvolver soluções criativas para o mundo.",
        github: "thazsobral",
        linkedin: "thalles-sobral",
        facebook: "thalles.sobral.7"
    },
    {
        img: "foto-bruno.jpeg",
        altImage: "foto do membro",
        bio: "Desde quando eu era mais jovem, trabalhava para atender com excelência todos os tipos de clientes, me formei em técnico de manutenção e suporte em informática, subi de cargo como coordenador, e hoje atuo como gerente operacional na parte de atendimento ao cliente. Outras formações, possuo Yellow Belt, AWS Practitioner, gerenciamento de projetos, e me aventuro na parte de Front-end.",
        github: "BrunoAlves95",
        linkedin: "bruno-alves-cordeiro",
        facebook: "bruno.alvescordeiro"
    },
    {
        img: "foto-edu.jpg",
        altImage: "foto do membro",
        bio: "Estudante de Gestão de TI na Anhanguera, amador da area de TI desde a infância, resolvi assumir a postura tecnológica durante a pandemia, comecei a faculdade e uma coleção de certificados de cursos, tendo hoje mais de 20 certificações. Levo como bagagem para esse novo mercado experiencia em Adm. de 16 anos e boa “esgrima” comunicativa.",
        github: "EduardoZabeuVeiga",
        linkedin: "EduardoZabeuVeiga",
        facebook: "EduardoZabeuVeiga"
    }


];

function populatePage() {
    const listaFuncionarios = document.getElementById("lista-funcionarios");

    for (let index = 0; index < funcionarios.length; index++) {
        listaFuncionarios.innerHTML +=
            `
        <li>
            <section>
                <img src="../resources/images/equipe/${funcionarios[index].img}" alt="" width="20%" class="equipe-img">
                <p class="descricao-funcionario">
                    ${funcionarios[index].bio}
                </p>
            </section>
            <section class="icons">
                <div>
                    <i class="fa-brands fa-square-github logo-site"></i>
                    <a class="git-funcionario" href="https://github.com/${funcionarios[index].github}" target="_blank"><span>@${funcionarios[index].github}</span></a>
                </div>
                <div>
                    <i class="fa-brands fa-linkedin logo-site"></i>
                    <a class="linkedin-funcionario" href="https://www.linkedin.com/in/${funcionarios[index].linkedin}" target="_blank"><span>@${funcionarios[index].linkedin}</span></a>
                </div>
                <div>
                    <i class="fa-brands fa-square-facebook logo-site"></i>
                    <a class="facebook-funcionario" href="https://www.facebook.com/${funcionarios[index].facebook}" target="_blank"><span>@${funcionarios[index].facebook}</span></a>
                </div>
            </section>
        </li>
        `
    }
}

populatePage();

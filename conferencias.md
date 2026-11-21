---
title: "Conferencias de Juan Pablo Matiz: IA para logística"
layout: default
seo:
  tldr: "Más de 35 charlas, talleres y clases de Juan Pablo Matiz en logística, datos e IA desde 2016. En los últimos dos años, 11 espacios, con tema y fotos."
  description: "Juan Pablo Matiz es conferencista de IA aplicada a logística y transporte. +35 charlas, talleres y clases desde 2016, y el detalle de las 11 más recientes."
aiContext:
  topic: "Conferencista, IA aplicada, Logística, Transporte"
  industry: "Logistics, Transport, Supply Chain, Applied AI"
  region: "Latin America"
canonical: "https://juanmatiz.com/conferencias/"
permalink: /conferencias/
---

<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@graph": [
    {
      "@type": "Person",
      "@id": "https://juanmatiz.com/#juan-pablo-matiz",
      "name": "Juan Pablo Matiz",
      "alternateName": "Juan Matiz",
      "url": "https://juanmatiz.com/",
      "jobTitle": "Conferencista de IA aplicada a logística y transporte",
      "worksFor": {
        "@type": "Organization",
        "name": "ATIEMPPO",
        "url": "https://atiemppo.com/"
      }
    },
    {
      "@type": "Service",
      "name": "Conferencias de logística y transporte",
      "serviceType": "Conferencista de IA aplicada a logística y transporte",
      "provider": {
        "@id": "https://juanmatiz.com/#juan-pablo-matiz"
      },
      "areaServed": {
        "@type": "Place",
        "name": "América Latina"
      },
      "url": "https://juanmatiz.com/conferencias/"
    },
    {
      "@type": "WebPage",
      "@id": "https://juanmatiz.com/conferencias/#webpage",
      "url": "https://juanmatiz.com/conferencias/",
      "name": "Conferencias de Juan Pablo Matiz: IA para logística",
      "about": {
        "@id": "https://juanmatiz.com/#juan-pablo-matiz"
      },
      "isPartOf": {
        "@type": "WebSite",
        "name": "Juanmatiz.com",
        "url": "https://juanmatiz.com/"
      }
    },
    {% for charla in site.data.charlas.recientes %}
    {
      "@type": "Event",
      "name": {{ charla.evento | jsonify }},
      "description": {{ charla.tema | jsonify }},
      "url": {{ charla.url | jsonify }}{% if charla.inicio %},
      "startDate": "{{ charla.inicio }}"{% endif %}{% if charla.fin %},
      "endDate": "{{ charla.fin }}"{% endif %},
      "eventAttendanceMode": "{% if charla.virtual %}https://schema.org/OnlineEventAttendanceMode{% else %}https://schema.org/OfflineEventAttendanceMode{% endif %}",
      "performer": {
        "@type": "Person",
        "name": "Juan Pablo Matiz",
        "url": "https://juanmatiz.com/"
      }{% if charla.lugar %}{% if charla.virtual %},
      "location": {
        "@type": "VirtualLocation",
        "name": "Virtual",
        "url": {{ charla.url | jsonify }}
      }{% else %},
      "location": {
        "@type": "Place",
        "name": {{ charla.lugar | jsonify }},
        "address": {
          "@type": "PostalAddress",
          "addressLocality": {{ charla.lugar | jsonify }},
          "addressCountry": "CO"
        }
      }{% endif %}{% endif %}
    }{% unless forloop.last %},{% endunless %}
    {% endfor %},
    {
      "@type": "FAQPage",
      "mainEntity": [
        {
          "@type": "Question",
          "name": "¿Necesitas una conferencia en logística?",
          "acceptedAnswer": {
            "@type": "Answer",
            "text": "Juan Pablo Matiz ofrece conferencias, paneles, moderaciones y talleres sobre logística, transporte de carga, costos, datos, ética e inteligencia artificial aplicada."
          }
        },
        {
          "@type": "Question",
          "name": "¿Buscas un experto en logística para tu evento?",
          "acceptedAnswer": {
            "@type": "Answer",
            "text": "Juan Matiz trabaja con congresos, gremios, empresas y equipos directivos en Colombia y América Latina."
          }
        },
        {
          "@type": "Question",
          "name": "¿Sobre qué habla un conferencista de transporte?",
          "acceptedAnswer": {
            "@type": "Answer",
            "text": "Sobre costos y referencias, redes de transporte, regulación, ética de datos, inteligencia artificial aplicada y liderazgo de equipos."
          }
        }
      ]
    }
  ]
}
</script>

<section class="page-hero">
  <div class="wrapper-narrow">
    <h1>Conferencista de IA aplicada a logística y transporte</h1>
    <p class="page-subtitle">Juan Pablo Matiz ayuda a equipos de transporte y logística a decidir mejor. En conferencias y talleres conecta datos, costos y la operación, con inteligencia artificial aplicada y criterio humano.</p>
  </div>
</section>

<section class="charlas-board" id="trayectoria">
  <div class="wrapper">
    <div class="section-header">
      <h2>Charlas, talleres y clases</h2>
      <p class="subtitle">La trayectoria, con la fecha y el tema de cada espacio reciente.</p>
    </div>
    {% include charlas-cifra.html %}
    {% include charlas-barras.html %}
    <h3 class="charlas-sub">Las {{ site.data.charlas.recientes.size }}, una por una</h3>
    {% include charlas-lista.html %}
    <h3 class="charlas-sub">En el escenario</h3>
    <p class="charlas-note">Fotos de 2026 a 2017, de la más reciente a la más antigua.</p>
    {% include charlas-galeria.html %}
  </div>
</section>

<section class="page-content">
  <div class="wrapper-narrow" markdown="1">

Ayudo a equipos de transporte y logística a decidir mejor. Como **conferencista**, llevo a escenarios nacionales e internacionales la conversación sobre costos, datos, regulación, ética de datos e inteligencia artificial aplicada.

Fundador de [ATIEMPPO](https://atiemppo.com/). Docente, investigador aplicado y consultor senior. Base en Bogotá; trabajo en toda América Latina.

Si buscas un **conferencista** para un congreso, gremio, empresa o equipo directivo, adapto la conversación al público y a la decisión que necesita tomar.

[Conocer las conferencias en ATIEMPPO](https://atiemppo.com/conferencias/) · [Leer el blog de conferencias](https://atiemppo.com/blog/conferencias/)

## Temas de conferencia

1. **Transporte de carga y costos** — Cómo leer el dato (referencias, redes, excepciones) para decidir esta semana.
2. **Ética de datos en logística** — Qué medir, qué no inventar y cómo instalar criterio en el equipo.
3. **Inteligencia artificial aplicada al transporte** — Del chat al agente que ejecuta con límites claros.
4. **Política pública y evidencia regional** — Encuestas nacionales de logística y foros con gobiernos y multilaterales.
5. **Liderazgo de equipos** — Datos e IA en la operación, sin perder el juicio humano.

## Formatos

Keynote, panel, moderación y taller cerrado con equipo directivo. Duración y profundidad se acuerdan con el organizador.

## Próximas conferencias

No hay fechas confirmadas por ahora. Si quieres una conferencia o un taller, la agendamos.

<p class="schedule-cta"><a class="btn btn-primary" href="https://atiemppo.com/contacto/?servicio=conferencia-datos">Agendar una conferencia o un taller</a></p>

## Por qué contratarme

- Traduzco regulación y dato operativo a lenguaje de decisión.
- Conecto **transporte de carga** con **ética de datos** e **IA aplicada** sin vender humo.
- Dejo preguntas y rutas de acción, no solo inspiración.

## Contacto para eventos

¿Necesitas una **conferencia en logística** o buscas un **experto en logística** para tu congreso, gremio o equipo? Juan Matiz adapta el formato y el contenido al público, la industria y la decisión que quieres activar.

- WhatsApp: [+57 310 768 7010](https://wa.me/573107687010?text=Hola%20Juan%2C%20quiero%20invitarte%20como%20conferencista)
- Correo: [juanmatiz@atiemppo.co](mailto:juanmatiz@atiemppo.co?subject=Invitaci%C3%B3n%20conferencista)
- Perfil ATIEMPPO: [atiemppo.com](https://atiemppo.com/)

## Preguntas frecuentes

**¿Necesitas una conferencia en logística?**

Sí. Trabajo desde Bogotá y participo en foros nacionales e internacionales de logística y transporte de carga.

**¿Buscas un experto en logística para tu evento?**

Trabajo con congresos, gremios, empresas y equipos directivos en Colombia y América Latina.

**¿Sobre qué habla un conferencista de transporte?**

Costos y referencias, redes, regulación, ética de datos e inteligencia artificial aplicada a la decisión del equipo.

**¿También hablas de ética de datos e IA?**  
Sí. Son parte del mismo problema: capturar bien, decidir con criterio y no confundir el dispositivo con la decisión.

---

[Sobre mí](/sobre-mi) · [Proyectos](/proyectos) · [CV](/cv) · [Contacto](/contacto)

  </div>
</section>

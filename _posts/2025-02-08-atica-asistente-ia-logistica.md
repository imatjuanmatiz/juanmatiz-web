---
title: "ATICA: Asistente de IA para Transformar la Logística"
date: 2025-02-08
author: "Juan Pablo Matiz"
layout: post
category: "Tecnología e Innovación"
tags: [ia, llm, logistica, atica, rag, inteligencia-artificial, innovacion]
seo:
  tldr: "Creé ATICA, asistente de IA para logística que integra 25 años de datos sectoriales para diagnóstico y consulta. Caso de IA aplicada con impacto real en decisiones empresariales"
aiContext:
  topic: "IA Aplicada en Logística"
  industry: "Tecnología, Logística, SaaS"
  region: "América Latina"
  project: "ATICA - AI Assistant"
  technology: "LLMs, RAG, Bases de Datos Vectoriales"
excerpt: "Entre 2023 y 2025 desarrollé ATICA, un asistente de inteligencia artificial especializado en logística que democratiza el acceso a 25 años de conocimiento sectorial. Este es el caso de cómo la IA puede ser un habilitador real de decisiones mejores, no un fin en sí mismo."
canonical: "https://juanmatiz.com/blog/2025/02/08/atica-asistente-ia-logistica"
---

## TL;DR

ATICA es un asistente de IA que integra 25 años de datos, estudios y experiencia del sector logístico latinoamericano. Diseñado para permitir diagnóstico express, consulta normativa y benchmarking sin requerir expertise especializada. Es un ejemplo concreto de IA como habilitador, no como fin.

## La motivación: 25 años de datos sin explotar

En 2022, tomé conciencia de algo que había estado frente a mí toda mi carrera: tenía acceso a una cantidad enorme de datos sobre logística en América Latina que simplemente no estaban siendo utilizados de manera sistemática.

Dos décadas y media de:
- Encuestas nacionales de logística (6 países)
- Planes de logística (4 países)
- Evaluaciones de políticas públicas (múltiples)
- Diagnósticos empresariales (cientos de compañías)
- Estudios sectoriales y especializados
- Benchmarking de desempeño
- Información regulatoria por país

Toda esa información existía en reportes, bases de datos, archives de Excel, documentos en formato PDF.

Un ejecutivo de una empresa de transporte en Perú que quería entender cómo se comparaba con la competencia en Colombia tenía que contratar un consultor. Un funcionario público diseñando regulación de fletes no tenía fácil acceso a datos sobre impacto de políticas similares en otros países.

La información existía. Simplemente no era accesible.

Eso me frustraba. Y en 2023, cuando empecé a explorar aplicaciones de inteligencia artificial con LLMs, vi una oportunidad.

## La visión: democratizar conocimiento sectorial

ATICA nació de una pregunta simple pero potente: ¿Qué pasaría si toda esa información estuviera disponible 24/7 en formato de asistente que pudiera responder preguntas en lenguaje natural?

Un funcionario del Ministerio de Transporte podría preguntar: "¿Cuáles fueron los cambios en costos de transporte en Colombia entre 2015 y 2020? ¿Cómo se comparó con otros países?"

Una empresa logística podría preguntar: "Nuestra estructura de costos muestra que gastamos 35% en combustible. ¿Cómo se compara con nuestro sector?"

Un emprendedor podría preguntar: "¿Qué regulaciones debo considerar si quiero operar un puerto seco en Bolivia?"

La respuesta no vendría de un consultor (caro, lento, con posible sesgo). Vendría de un asistente que ha "leído" toda la información disponible, que sabe dónde está lo que buscan, que puede sintetizar respuestas en segundos.

Esa era la visión de ATICA: democratizar acceso a conocimiento logístico.

## La arquitectura técnica: LLMs + RAG + Datos

ATICA se construyó sobre una arquitectura que integraba:

### 1. Large Language Models (LLMs)

En el core, utilizamos LLMs (inicialmente GPT-4, luego expandimos a otros modelos). El LLM proporciona:
- Capacidad de entender preguntas en lenguaje natural
- Capacidad de generar respuestas coherentes en español
- Razonamiento sobre contexto y nuances

Pero un LLM "vanilla" tenía un problema: alucinaba. Sin información específica sobre logística, generaba respuestas que sonaban bien pero no eran precisas.

### 2. Retrieval Augmented Generation (RAG)

Para evitar alucinaciones, implementamos RAG: un mecanismo que permite al LLM "consultar" una base de datos antes de responder.

El flujo es:
1. Usuario pregunta: "¿Cuáles son los costos logísticos como % de ventas en Chile?"
2. Sistema convierte pregunta a vector
3. Busca en base de datos de documentos (también vectorizados) los más relevantes
4. Proporciona al LLM esos documentos como contexto
5. LLM genera respuesta basada en contexto real, no en alucinación

### 3. Base de datos vectorial + Knowledge management

La parte menos glamorosa pero más crítica: preparar los datos.

Teníamos que:
- Digitalizar información que estaba en PDFs, documentos Word, Excels
- Estructurar información dispersa en formatos consistentes
- Crear metadata que permitiera búsqueda semántica
- Validar información por calidad y actualidad
- Actualizar datos conforme nueva información disponible

Esta parte tomó 6 meses. El desarrollo de la interfaz de usuario y la optimización del RAG tomó otros 6 meses.

### 4. Integración con bases de datos especializadas

Integramos también con bases de datos específicas:
- **Regulatorias**: Normativas sobre transporte en 8 países
- **Económicas**: Series de tiempo de costos, tarifas, índices
- **De desempeño**: Benchmarks de operaciones logísticas
- **Bibliográfica**: Estudios y papers sobre logística

## Casos de uso: cómo ATICA generaba valor

A medida que desarrollábamos ATICA, identificamos cuatro casos de uso principales:

### 1. Diagnóstico express

Una empresa tiene problemas. No sabe por dónde empezar. Antes: contratar un consultor por 20,000+ USD, esperar 2-3 meses.

Con ATICA: Ingresar datos básicos sobre la empresa (sector, tamaño, país, costos principales) y el sistema genera diagnóstico que compara con benchmarks del sector.

Ejemplo: "Tu costo de transporte es 28% de tus ventas. En tu sector, la mediana es 18%. Aquí hay 5 empresas que son más eficientes que tú, estas son variables en las que difieren."

No es un diagnóstico exhaustivo. Pero es suficientemente bueno para que una empresa entienda si tiene un problema real y en dónde enfocarse.

### 2. Consulta normativa

Operador logístico en Ecuador quiere entender regulación de pesos y dimensiones de vehículos. Antes: contratar consultor regulatorio (caro) o esperar a hablar con autoridad (lento).

Con ATICA: Pregunta directa, respuesta inmediata con citación de normativa.

Esto era particularmente valioso porque normativa está dispersa entre múltiples fuentes (Ministerios, reguladores, aduanas) y cambia frecuentemente.

### 3. Benchmarking automático

Empresa quiere saber cómo se compara con competencia. Entra datos: tamaño, sector, geografía, costos principales.

ATICA responde con:
- Mediana de su sector
- Distribución (percentil 25, 50, 75, 90)
- Empresas benchmark que son más eficientes
- Estimación de dónde se origina la brecha

### 4. Soporte para toma de decisiones

Gerente público debía diseñar subsidio para modernización de flota. Pregunta a ATICA:
- "¿Cuál fue el impacto de políticas similares en otros países?"
- "¿A qué nivel de subsidio las empresas realmente invierten?"
- "¿Cuáles son los costos para el gobierno vs beneficios"

ATICA sintetizaba de experiencia en 6 países, con contextos similares.

## Desafíos técnicos y cómo los resolvimos

### Desafío 1: Alucinaciones del LLM

El problema más común: LLM respondía con confianza sobre información que no estaba en base de datos.

Solución: Strict RAG con "no sé" forzado. Si información no estaba en base de datos, el sistema debía responder "No tengo información sobre eso en mi base de datos" en lugar de alucinar.

Implementamos filtro que revisaba si respuesta era coherente con contexto proporcionado.

### Desafío 2: Datos obsoletos o inconsistentes

Teníamos datos de diferentes años, diferentes metodologías. Un dato de 2015 era válido pero necesitaba contexto de cuándo se recolectó.

Solución: Metadata rigurosa. Cada dato incluía: fuente, año, metodología, limitaciones conocidas. El LLM incluía esa información en respuesta cuando relevante.

### Desafío 3: Contexto variado

Una pregunta podía tener respuestas diferentes dependiendo de contexto (país, sector, tamaño de empresa). Necesitábamos que sistema entendiera contexto implícito.

Solución: Pre-consulta de "desambiguación". Si pregunta era ambigua, sistema preguntaba: "¿Te refieres a Colombia, Perú o ambos? ¿Sector específico?"

Esto hacía respuestas más precisas.

### Desafío 4: Actualización de datos

Datos envejecen. Encuestas de 2015 son históricamente valiosas pero no para decisiones actuales sin contexto.

Solución: Integración con fuentes de datos que se actualizaban automáticamente (índices de precios de combustible, tasas de cambio, datos de DANE, etc.) y revalidación manual de información crítica cada 6 meses.

## Aprendizajes sobre IA aplicada vs IA teórica

Desarrollar ATICA me enseñó diferencias profundas entre IA académica/teórica y IA aplicada en mundo real:

### 1. Datos es lo más importante

En papers académicos, se asume que tienes datos limpios, estructurados, de calidad. En realidad, 80% del tiempo se gasta preparando datos.

Implementar RAG de calidad requería datos estructurados. Teníamos que convertir PDFs de reportes en información que un vector embedding entendiera. Eso era trabajo manual y tedioso.

### 2. Ética y sesgos son reales

Un LLM entrenado principalmente en internet en inglés tiene sesgos. Cuando lo aplicas a logística latinoamericana, puede reflejar sesgos en cómo se habla de región.

Teníamos que ser muy conscientes de:
- Qué datos incluíamos vs excluíamos
- Cómo representaba realidades de países pequeños vs grandes
- Si estábamos amplificando sesgos existentes

### 3. El usuario importa más que la tecnología

La mejor arquitectura de LLM + RAG sirve poco si interface no es intuitiva. Ejecutivos ocupados no quieren tener que aprender cómo estructurar preguntas.

Pasamos mucho tiempo observando cómo usuarios interactuaban con ATICA, entendiendo dónde se confundían, ajustando.

### 4. IA es una herramienta de productividad, no un reemplazo

ATICA no reemplazaba consultor. Reemplazaba las primeras 5 horas de un consultor (búsqueda de información, análisis inicial). El consultor aún era necesario para:
- Validar hipótesis
- Investigación original
- Recomendaciones contextualizadas
- Implementación

Esa distinción era importante para cómo comunicábamos valor.

## El futuro de asistentes verticales en LatAm

Desarrollar ATICA me permitió reflexionar sobre futuro de asistentes de IA especializados (verticales) en América Latina:

### Oportunidad 1: Industrias con mucho conocimiento tácito

Logística es una de muchas industrias donde existe conocimiento acumulado (estudios, regulaciones, best practices) disperso y no fácilmente accesible. Manufactura, agricultura, salud, educación tienen dinámicas similares.

Cada una podría tener su "asistente vertical" especializado.

### Oportunidad 2: Contexto regulatorio fragmentado

En LatAm, cada país tiene regulaciones distintas. Un transportista operando en 3 países necesita entender 3 marcos regulatorios. Un asistente que captura esa variedad es valioso.

### Oportunidad 3: Lenguaje natural en español

Mientras LLMs mejoran en español, hay aún brecha vs calidad en inglés. Asistentes verticales especializados en LatAm pueden mejorar dramáticamente responder en español con contexto regional.

## IA como habilitador, no como fin

Este es quizás el aprendizaje más importante de ATICA.

Existe hype excesivo alrededor de IA. Se ve como solución a casi todo. Startups se lanzan diciendo "usamos IA" como si fuera suficiente diferenciador.

ATICA fue diferente. IA (específicamente LLMs + RAG) era un medio para resolver un problema real: que ejecutivos y tomadores de decisiones no tenían acceso a información que existía.

Sin ese problema claro, ATICA sería solo una demostración técnica sin valor real.

Con el problema claro, IA era herramienta poderosa pero solo una pieza.

Ese enfoque debería ser estándar en "IA aplicada": empezar por el problema, no por la tecnología.

## Reflexión final: democratización y acceso

Trabajar en ATICA me conectó con algo que ha sido central en mi carrera: creer que conocimiento debe ser accesible.

Durante 25 años acumulé conocimiento sobre logística en LatAm. Buena parte ese conocimiento estaba en reportes que costaban miles de dólares, o en conversaciones privadas con ejecutivos.

ATICA fue intento de decir: ese conocimiento debería estar disponible para cualquiera que lo necesitara. No porque sea altruismo. Porque economía de la región mejora cuando decisiones están mejor informadas.

Un transportista pequeño en Perú que puede hacer diagnóstico express sin pagar consultor va a tomar decisiones mejores. Una ciudad planificando logística urbana que puede aprender de experiencia en 6 países va a diseñar política mejor. Una startup logística que accede a benchmarks sin contratar investigador va a competir más efectivamente.

Eso es lo que ATICA intentaba posibilitar.

Es un experimento en curso. La tecnología evoluciona rápidamente. Pero el propósito permanece: IA como habilitador de mejor acceso, mejor información, mejores decisiones.

---

**Tags:** #ia #llm #logistica #atica #rag #inteligenciartificial #innovacion

**Relacionado:** [IA como Habilitador, No como Fin](/blog/2025/02/09/ia-como-habilitador) | [25 Años en Logística Latinoamericana](/blog/2025/02/10/25-anos-logistica-latam)

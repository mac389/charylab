---
date: 2022-04-10
tag: [funding, biomedical research]
excerpt: Steps to Getting an R01
layout: post
title: Steps to Getting an R01
modified: 2023-03-12
---

A few days ago I read <a href="https://www.nature.com/articles/s41390-022-02017-8">this article</a> that gives young researchers a 32-step guide on how to get federal funding. I summarize their paper in the below flowchart. I appreciate the detailed guidance the authors provide, but their proposal focusses on process while ignoring the cost on the individual and rarety of the appropriately fertile milieu.

- There are more than 32 steps if one counts loops. This is too much to do well in one year.
- There is no discussion of who will fund you while you are doing this work. If someone else is paying you, you will not have the freedom to make your own proposal while generating content for them. If you are working clinically, you won't have time unless you are given staff. Why would a clinical department give you protected time, pay for someone to cover the clinical work they are _protecting_ you from, and pay for your staff unless they are confident their investment in you will pay off? (The article is adressed to reseachers without funding.)

```mermaid
flowchart TD
    criticizeAims[<u>Harshly Criticize Each Aim</u><br><ul style='text-align:left'><li>Do you have expertise?</li><li>Will it work?</li><li>Is the rationale scientifically elegant?</li><li>Do you have the Equipment and Facilities needed?</li><li>Clinical Relevance</li><li>Is the aim mechanistic and focused?</li><li>Preliminary Data?</li></ul>] --> studySection[Will the Study Section Like It?]
		studySection  -- no -->  criticizeAims
		studySection  -- yes --> reevaluateAims[Re-evaluate Aims]
		reevaluateAims --> doMoreExp[Do More Experiments<br>To Support Aims]
		doMoreExp --> litReview[Review Literature]
		litReview --> updateAims[Update Aims]
		updateAims -- "at least once" --> criticizeAims
		updateAims --> reviewNewData[Review New Data]
		reviewNewData --> updateAimsData[Update Aims Based on<br> New Preliminary Data]
		updateAimsData -- "at least once" --> criticizeAims
		updateAimsData --> learnNewTechniques[Learn New Techniques<br>to Address Gaps in Proposal]
		learnNewTechniques --> checkInnovation[Are Aims Still Innovative?]



```

# CHANEL@JSALT2020: Extended Corpora Metadata using Microsoft Azure Cognitive Services

## Intro
Automatic dialogue system is an important area of research focused on allowing natural human machine interfaces. Most current efforts and state-of-the-art results are achieved by training large neural models using huge amounts of text dialogue data. Thanks to these resources and techniques, advanced models like GPT-3 (OpenAI), Meena (Google) or Blender (Facebook) have been deployed achieving incredible results that can be later fine-tuned or adapted to other tasks. 
Unfortunately, such models and data are not available for other languages (even those with a large population of speakers) or may contain inappropriate content that should be avoided when training or fine-tuning models, highly limiting research and deployment. 

During the JSALT2020 worshop, the CHANEL workshop was proposed to contribute reducing some of these problems, while proposing new metrics for open-dialogue evaluation and collecting an annotating data that can be used for research purposes. With this meta-annotated data, we are trying to reduce some of the current breaches and promoting research on existing databases, as well on different languages.

The provided resource consists of three different meta-data information extracted using the following Microsoft Azure cognitive services:

1.	Automatic machine translation system to translate existing datasets (in English) into Spanish and then back-translating them to English. This metadata can be used directly to train or fine-tune models for the Spanish language, fine-tune existing English models by using the paraphrases obtained through back-translation as data augmentation technique, and also evaluating the quality of the translation system and differences between using dialogue systems trained from scratch or fine-tuned using the provided meta-data. 

2.	Moderation: Datasets used to train dialogue systems may contain inappropriate content (e.g. swear words or toxic comments) that should not be included to avoid the dialogue system to provide embarrassing answers. The provided metadata includes information about the presence of toxic comments, words or expressions that could be considered unappropriated or contain personal information to that should be not included or anonymized.

3.	Sentiment analysis: Finally, the provided metadata includes information about sentiment of the different turns in the dialog. The sentiment information includes the following labels: positive, neutral or negative, and the respective probability for each one.

## Files Processed
The following table describes the datasets processed and the services applied. Due to budget constraints some datasets were not fully processed, leaving for future opportunities, completing the pending information.


| Dataset                   | Sentiment Analysis | Content Moderate | Spanish Translation  | English Translation |
|---------------------------|--------------------|------------------|----------------------|---------------------|
| DBDC                      | ✔                  | ✔                | ✔                   | ✔                   |
| Cornell Movie-Dialogs     | ✔                  | ✔                | ✔                   | ✔                   |
| DailyDialog               | ✔                  | ✔                | ✔                   | ✔                   |
| EmotionLines              | ✔                  | ✔                | ✔                   | ✔                   |
| EmpathicDialogues         | ✔                  | ✔                | ✔                   | ✔                   |
| EmpathicDialogues Context | ✔                  | ✔                | ✔                   | ✔                   |
| MEENA                     | ✔                  | ✔                | ✔                   | ✔                   |
| MELD                      | ✔                  | ✔                | ✔                   | ✔                   |
| MetalWOz                  | ✔                  | ✔                | ✔                   | ✔                   |
| Movie-DiC                 | ✔                  | ✔                | ✔                   | ✔                   |
| PersonaChat               | ✔                  | ✔                | ✔                   | ✔                   |
| PersonaChat Context       | ✔                  | ✔                | ✔                   | ✔                   |
| SentimentLIAR             | ✔                  | ✔                | ✔                   | ✔                   |
| Switchboard Coherence     | ✔                  | ✔                | ✔                   | ✔                   |
| Topical-Chat              | ✔                  | ✔                | ✔                   | ✔                   |
| Wochat                    | ✔                  | ✔                | ✔                   | ✔                   |
| KvPI main                 | ✔                  | ✔                | ✔                   | ✔                   |
| KvPI dialoginfo           | ✔                  | ✔                | ✔                   | ✔                   |
| Decode main               | ✔                  | ✔                | ✔                   | ✔                   |
| Decode context            | ✔                  | ✔                | ✔                   | ✔                   |
| Decode dialoginfo         | ✔                  | ✔                | ✔                   | ✔                   |
| Holle main                | ✔                  | ✔                | ✔                   | ✔                   |
| Holle dialoginfo          | ✔                  | ✔                | ✔                   | ✔                   |
| CMU_DoG main              | ✔                  | ✔                | ✔                   | ✔                   |

## CITATION
In case you use any of the provided datasets and the corresponding metadata, please cite the original paper for the respective dataset and the following paper:
```
@article{chanel-jsalt2020,
  title={CHANEL-Metrics: Chat/Dialogue Modeling and Evaluation report},
  author={Alexander Rudnicky and Rafael Banchs and Luis F. D’Haro and João Sedoc and Zhang Chen and Mario Rodríguez-Cantelar and Andrew Koh Jin Jie and others},
  url={https://www.clsp.jhu.edu/chaval-chat-dialogue-modeling-and-evaluation/},
  git={https://github.com/CHANEL-JSALT-2020},
  year={2020}
}
```

## Multiple File System
Dialogue datasets are stored across multiple files. This are the supported types of files:
*	Readme. A .txt file providing general information about the corpus.
*	Main. The main data file of the corpus in .csv format containing the raw text of the turns and the main indexes.
*	Context. Used to provide dialogue context information at the turn and supra-turn level in .csv format.

Main File Format
The main data file of a corpus is a .csv file containing the raw text of the turns and the main UID indexes.
The UID is of the form cccccc-dddddd-uuuu, where:
*	cccccc: six alphanumeric characters identifying the corpus.
*	dddddd: six digits identifying the dialogue number inside the corpus.
*	uuuu: four digits identifying the utterance number inside the dialogue.
Naming Convention: the main file must be named as "cccccc_main.csv", where cccccc is the corpus index CID.
*	CID (corpus index): cccccc the six alphanumeric characters identifying the corpus.
Index and attributes: the main file must contain at least three mandatory columns:
*	UID: the unique utterance indexes.
*	SID: the speaker names or ids for each turn.
*	SEG: the raw segment of text comprising the turn.
Full information in Unified Dialogue Data Formats and File Data Formats.

## Context File Format
 Auxiliary files providing complementary dialogue metadata related to the corpus.

Index and attributes: the context file must contain at least one mandatory column:
*	DID (dialogue index): cccccc-dddddd the CID followed by the dialogue number.
Full information in Unified Dialogue Data Formats and File Data Formats.

## Sentiment Analysis File Format
The Text Analytics API is a cloud-based service that provides advanced natural language processing over raw text and includes the sentiment analysis function.
The utterance contains the sentiment analysis of each dialogue. The sentence contains the sentiment analysis of each sentence per utterance.
Naming Convention: the sentiment analysis file must be named as "cccccc_{utterance/sentence}_sentiment_analytics.csv", where cccccc is the corpus index CID.
Index and attributes: the utterance sentiment analysis file must contain at least six mandatory columns:
*	UID: the unique utterance indexes.
*	SEG: the raw segment of text comprising the turn.
*	utt_sentiment: sentiment label of the entire utterance.
*	utt_pos_score: positive sentiment score of the entire utterance.
*	utt_neu_score: neutral sentiment score of the entire utterance.
*	utt_neg_score: negative sentiment score of the entire utterance.
Index and attributes: the sentence sentiment analysis file must contain at least seven mandatory columns:
*	SUID (sub-utternace index): cccccc-dddddd-uuuu-[xxxx,xxxx] the UID followed by the start and end character numbers.
*	sentence_split: the raw segment of text comprising the turn per utterance.
*	sentence_idx: the index of each sentence related to its utterance.
*	sentence_sentiment: sentiment analysis label for each sentence.
*	pos_score: positive sentiment analysis score for each sentence.
*	neu_score: neutral sentiment analysis score for each sentence.
*	neg_score: negative sentiment analysis score for each sentence.

## Content Moderator File Format
Content Moderator is a cognitive service that checks text content for material that is potentially offensive, risky, or otherwise undesirable.

Naming Convention: the content moderator file must be named as "cccccc_content_moderator.csv.csv", where cccccc is the corpus index CID.
Index and attributes: the content moderator file must contain at least seven mandatory columns:
*	UID: the unique utterance indexes.
*	SEG: the raw segment of text comprising the turn.
*	profanity_terms: profane terms detected.
*	sexually_explicit_adult_score: refers to potential presence of language that may be considered sexually explicit or adult in certain situations.
*	sexually_suggestive_mature_score: refers to potential presence of language that may be considered sexually suggestive or mature in certain situations.
*	offensive_score: refers to potential presence of language that may be considered offensive in certain situations.
*	review_recommended: is either true or false depending on the category scores.

## Translation File Format
Translate each utterance string from one language to another. Also detects profanities in translations.

Naming Convention: the translation file must be named as "cccccc_translation_<from_language>2<to_language>.csv", where cccccc is the corpus index CID.
Index and attributes: the translation file must contain at least three mandatory columns:
*	UID: the unique utterance indexes.
*	SEG: the raw segment of text comprising the turn.
*	Translate: translation from one language to another.
*	Profanity: detection of profanity.

## Acknowledgement
We want to thank the JSALT2020 organizers: Sanjeev Khudanpur, Najim Dehak, Jan Trmal and Piotr Żelasko, for their support to use the Azure services, as well as the workshop sponsors: Amazon and Microsoft.

We also want to give thanks to MS Azure services (especially to Irving Kwong) for their sponsorship to continue processing new datasets that could be interesting for the dialogue community.

## Authors
- Mario Rodríguez-Cantelar and Luis Fernando D’Haro - Universidad Politécnica de Madrid, Spain.
- Rafael E. Banchs, Nanyang Technological University, Singapore.

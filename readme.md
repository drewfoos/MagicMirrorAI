# Generative AI Mirror

  Created by Andrew Dryfoos

## Description

  

This application is designed to integrate with OpenAI's API to generate descriptions based on images and subsequently uses these descriptions to generate images. It's an excellent tool for experimenting with AI capabilities in image recognition and generation.

  

## Features

  

- Image description using OpenAI's GPT-4 model.

- Image generation based on the description.

- Fully dockerized application for easy setup and deployment.
- 404 page
- Node.js server

  

## Prerequisites

  

Before you begin, ensure you have met the following requirements:

- Docker installed on your machine.

- An OpenAI API key that supports GPT-4.

  

## Installation and Setup

  

1. **Clone the repository**

```bash

git clone https://github.com/drewfoos/MagicMirrorAI.git

cd MagicMirrorAI

```

  

2.  **Set up environment variables**

- Rename `.env.example` to `.env`.

- Add your OpenAI API key to the `.env` file:

```plaintext

OPENAI_API_KEY=insertyourapikeyhere

```

  

3.  **Build and run the Docker container**

```bash

docker build -t MagicMirrorAI .

docker run -p 3000:3000 MagicMirrorAI

```

  

## Usage

  

After starting the server, navigate to [http://localhost:3000/](http://localhost:3000/) to interact with the application. Use the provided web interface to upload images and receive generated descriptions and images.

  

## Contributing

  

Contributions are what make the open-source community such an amazing place to learn, inspire, and create. Any contributions you make are greatly appreciated.

  

1. Fork the Project

2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)

3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)

4. Push to the Branch (`git push origin feature/AmazingFeature`)

5. Open a Pull Request

  

## License

  

Distributed under the ISC License. See [LICENSE](LICENSE) for more information.

  

## Contact

  

Andrew Dryfoos - dryfoosa@gmail.com

  

Project Link: [https://github.com/drewfoos/MagicMirrorAI](https://github.com/drewfoos/MagicMirrorAI)

  

## Acknowledgments

  

- OpenAI API

- Node.js

- Express.js

- Docker
<div class="section">
  <div class="container">

    <div class="">
      <div class="column">
        <div class="content">
          <h1 id="home" class="is-size-1">Indonesian Bank Provider <span>API</span></h1>
          <p>
            According to <a href="https://en.wikipedia.org/wiki/Financial_Services_Authority_(Indonesia)" target="_blank">OJK</a>.
            Indonesia has 4 type of bank. There is BANK UMUM PERSERO, BANK UMUM SWASTA NASIONAL, BANK PEMBANGUNAN DAERAH, and KANTOR CABANG BANK YANG BERKEDUDUKAN DI LUAR NEGERI.
          </p>
          <hr>
          <h2 id="keyfeature">Key Features</h2>
          <p>
            This API must be able to display list of bank names.
          </p>
          <hr>

          <h2 id="license">License</h2>
          <p>
            This API and Seme Framework are licensed under MIT.
          </p>
          <hr>

          <h2 id="qna">Question and Answer</h2>
          <p>
            Feel free to ask me on my <a href="https://instagram.com/drosanda/" target="_blank">instagram</a>, <a href="https://facebook.com/drs11/" target="_blank">facebook</a>, or open an issue on <a href="https://github.com/drosanda/seme-indonesian-address-provider-api/issues" target="_blank">github</a>.
          </p>
          <hr>

          <h2 id="resources">Resources</h2>
          <p>
            This API and pages source codes are available on <a href="https://github.com/drosanda/bank-id-api/" target="_blank">github.com/drosanda/bank-id-api</a>.
          </p>
          <hr>
          <h2 id="gs">Getting Started</h2>
          <p>This API is can be used for free but with no warranty. First thing first the base url of API is <code>https://alamat.thecloudalert.com/api/</code>.</p>
          <p>The API endpoint should follow the base url before consumed.</p>

          <h3 id="gs_select2">Select2 format</h3>
          <p>API endpoint for generating the list of bank in Indonesia.</p>
          <p><code>https://bank.thecloudalert.com/api/select2/</code></p>
          <p>And the example result is</p>
          <pre>{
  "status": 200,
  "message": "Berhasil",
  "result": [
    {
      "id": "1",
      "text": "PT BANK RAKYAT INDONESIA (PERSERO) Tbk"
    },
    {
      "id": "2",
      "text": "PT BANK MANDIRI (PERSERO) Tbk"
    }
  ]
}
          </pre>
          <h3 id="gs_select2_filter">Filtering the result</h3>
          <p>By adding GET parameter with keyword name, the api result can be filtered.</p>
          <p><code>https://bank.thecloudalert.com/api/select2/?keyword=bri</code></p>
          <p>And the example result is</p>
          <pre>{
  "status": 200,
  "message": "Berhasil",
  "result": [
    {
      "id": "1",
      "text": "PT BANK RAKYAT INDONESIA (PERSERO) Tbk"
    }
  ]
}
          </pre>

          <h3 id="gs_datatable">DataTable format</h3>
          <p>API endpoint for generating the list of bank in Indonesia.</p>
          <p><code>https://bank.thecloudalert.com/api/get/?keyword=vict</code></p>
          <p>And the example result is</p>
          <pre>{
  "data": [
    [
      "71",
      "BANK UMUM SWASTA NASIONAL",
      "566",
      "PT BANK VICTORIA INTERNATIONAL Tbk",
      "Gedung Graha BIP Lt.10 Jl. Gatot Subroto Kav. 23 Karet Semanggi, Setiabudi Jakarta Selatan 12930",
      "(021) 5228888",
      "Fax : (021) 5228777",
      "www.victoriabank.co.id"
    ],
    [
      "50",
      "BANK UMUM SWASTA NASIONAL",
      "405",
      "PT BANK VICTORIA SYARIAH",
      "Gd Graha BIP lantai 5 Jl.Gatot Subroto Kav.23 Karet Semanggi Setiabudi Jakarta Selatan",
      "(021) 5600467",
      "Fax : (021) 57940941",
      "www.bankvictoriasyariah.co.id"
    ]
  ],
  "recordsFiltered": "2",
  "recordsTotal": "2",
  "status": 200,
  "message": "Berhasil"
}
          </pre>


        </div>
      </div>
    </div>

  </div>
</div>

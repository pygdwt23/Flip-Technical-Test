*** Settings ***
Library    SeleniumLibrary
Library    FakerLibrary     WITH NAME   fake

*** Variables ***
${url}          https://flip.id/
${browser}      Chrome
#${browser}      Firefox

*** Test Cases ***
Verify Button Masuk Redirection
#   Buka Browser dan Maximize Browser Window
    Open Browser    ${url}      ${browser}
    Maximize Browser Window

#    Klik Tombol Masuk
    Click Element    //a[contains(text(),'Masuk')]
    Wait Until Element Is Visible    //h1[contains(text(),'Silakan masuk dan mulai transfer antar bank tanpa ')]

#   Verifikasi / Assertion Teks untuk memastikan user berhasil dialihkan ke page yang dituju
    Element Text Should Be    //h1[contains(text(),'Silakan masuk dan mulai transfer antar bank tanpa ')]       Silakan masuk dan mulai transfer antar bank tanpa biaya hari ini
    Sleep    3s

#    Tutup Browser
    Close All Browsers

Verify Button Biaya Redirection
#   Buka Browser dan Maximize Browser Window
    Open Browser    ${url}      ${browser}
    Maximize Browser Window

#    Klik Tombol Biaya
    Click Element    //body/div[1]/div[1]/div[1]/div[1]/div[1]/ul[1]/li[3]/a[1]
    Wait Until Element Is Visible    //b[contains(text(),'Pilih Layanan Flip yang Sesuai Kebutuhanmu')]

#   Verifikasi / Assertion Teks untuk memastikan user berhasil dialihkan ke page yang dituju
    Element Text Should Be    //b[contains(text(),'Pilih Layanan Flip yang Sesuai Kebutuhanmu')]        Pilih Layanan Flip yang Sesuai Kebutuhanmu
    Sleep    3s
#    Tutup Browser
    Close All Browsers

Verify Button Karir Redirection
#   Buka Browser dan Maximize Browser Window
    Open Browser    ${url}      ${browser}
    Maximize Browser Window

#    Klik Tombol Karir
    Click Element    //body/div[1]/div[1]/div[1]/div[1]/div[1]/ul[1]/li[2]/a[1]
    Wait Until Element Is Visible    //h4[contains(text(),'Flip Careers')]

#   Verifikasi / Assertion Teks untuk memastikan user berhasil dialihkan ke page yang dituju
    Element Text Should Be    //h4[contains(text(),'Flip Careers')]     Flip Careers
    Sleep    3s
#    Tutup Browser
    Close All Browsers

Verify Button Bantuan Redirection
#   Buka Browser dan Maximize Browser Window
    Open Browser    ${url}      ${browser}
    Maximize Browser Window

#    Klik Tombol Bantuan
    Click Element    //body/div[1]/div[1]/div[1]/div[1]/div[1]/ul[1]/li[1]/a[1]
    Wait Until Element Is Visible    //span[contains(text(),'Pusat Bantuan')]

#   Verifikasi / Assertion Teks untuk memastikan user berhasil dialihkan ke page yang dituju
    Element Text Should Be    //span[contains(text(),'Pusat Bantuan')]      Pusat Bantuan
    Sleep    3s
#    Tutup Browser
    Close All Browsers
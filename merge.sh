#!/bin/bash

rm -f raw.txt merged_clean.txt final.txt whitelist.txt

# ===== list =====
urls=(
# =========== Adguard: General
# === 🟢 1Hosts lite -filter_24.txt :: Adguard
"https://adguardteam.github.io/HostlistsRegistry/assets/filter_24.txt"
# === X 🔴 1Hosts mini -filter_38.txt:: Adguard
#https://adguardteam.github.io/Hoassets/filter_38.txt"
# === 🟢  AGuard DNS filter -filter_1.txt:: Adguard
"https://adguardteam.github.io/HostlistsRegistry/assets/filter_1.txt"
# === 🟢  AdGuard DNS Popup Hosts Filter -filter_59.txt:: Adguard
"https://adguardteam.github.io/HostlistsRegistry/assets/filter_59.txt"
# === 🟢  AWAvenue Ads Rule -filter_53.txt:: Adguard
"https://adguardteam.github.io/HostlistsRegistry/assets/filter_53.txt"
# === 🟢  Dan Pollock's List -filter_4.txt :: Adguard
"https://adguardteam.github.io/HostlistsRegistry/assets/filter_4.txt"
# === 🟢  HaGeZi's Normal Blocklist -filter_34.txt:: Adguard
"https://adguardteam.github.io/HostlistsRegistry/assets/filter_34.txt"
# === 🟢  HaGeZi's Pro Blocklist -filter_48.txt:: Adguard
"https://adguardteam.github.io/HostlistsRegistry/assets/filter_48.txt"
# === X 🔴 HaGeZi's Pro++ Blocklist -filter_51.txt :: Adguard
#"https://adguardteam.github.io/HostlistsRegistry/assets/filter_51.txt"
# === X 🔴 HaGeZi's Ultimate Blocklist -filter_49.txt:: Adguard
#"https://adguardteam.github.io/HostlistsRegistry/assets/filter_49.txt"
# === 🟢  OISD Blocklist Small -filter_5.txt:: Adguard
"https://adguardteam.github.io/HostlistsRegistry/assets/filter_5.txt"
# === X 🔴 OISD Blocklist Big -filter_27.txt:: Adguard
#"https://adguardteam.github.io/HostlistsRegistry/assets/filter_27.txt"
# === 🟢  Peter Lowe's Blocklist -filter_3.txt:: Adguard
"https://adguardteam.github.io/HostlistsRegistry/assets/filter_3.txt"
# === 🟢  Steven Black's List -filter_33.txt:: Adguard
"https://adguardteam.github.io/HostlistsRegistry/assets/filter_33.txt"
# =========== ADG Other :: Adguard
# === 🟢  Dandelion Sprout's Anti Push Notifications -filter_39.txt:: Adguard
"https://adguardteam.github.io/HostlistsRegistry/assets/filter_39.txt"
# === 🟢  Dandelion Sprout's Game Console Adblock List -filter_6.txt:: Adguard
"https://adguardteam.github.io/HostlistsRegistry/assets/filter_6.txt"
# === X 🔴 HaGeZi's Allowlist Referral -filter_45.txt:: Adguard
#"https://adguardteam.github.io/HostlistsRegistry/assets/filter_45.txt"
# === 🟢  HaGeZi's Anti-Piracy Blocklist -filter_46.txt:: Adguard
"https://adguardteam.github.io/HostlistsRegistry/assets/filter_46.txt"
# === 🟢  HaGeZi's Gambling Blocklist -filter_47.txt:: Adguard
"https://adguardteam.github.io/HostlistsRegistry/assets/filter_47.txt"
# === X 🔴 HaGeZi's Samsung Tracker Blocklist -filter_61.txt:: Adguard
#"https://adguardteam.github.io/HostlistsRegistry/assets/filter_61.txt"
# === 🟢  HaGeZi's Windows/Office Tracker Blocklist -filter_63.txt:: Adguard
"https://adguardteam.github.io/HostlistsRegistry/assets/filter_63.txt"
# === X 🔴 HaGeZi's Xiaomi Tracker Blocklist -filter_60.txt:: Adguard
#"https://adguardteam.github.io/HostlistsRegistry/assets/filter_60.txt"
# === X 🔴 No Google -filter_37.txt:: Adguard
#"https://adguardteam.github.io/HostlistsRegistry/assets/filter_37.txt"
# === 🟢  Perflyst and Dandelion Sprout's Smart-TV Blocklist -filter_7.txt:: Adguard
"https://adguardteam.github.io/HostlistsRegistry/assets/filter_7.txt"
# === 🟢  ShadowWhisperer's Dating List -filter_57.txt:: Adguard
"https://adguardteam.github.io/HostlistsRegistry/assets/filter_57.txt"
# === 🟢  Ukrainian Security Filter -filter_62.txt:: Adguard
"https://adguardteam.github.io/HostlistsRegistry/assets/filter_62.txt"
# =========== ADG Regional
# === X 🔴 CHN: AdRules DNS List -filter_29.txt:: Adguard
#"https://adguardteam.github.io/HostlistsRegistry/assets/filter_29.txt"
# === X 🔴 CHN: anti-AD -filter_21.txt:: Adguard
#"https://adguardteam.github.io/HostlistsRegistry/assets/filter_21.txt"
# === X 🔴 HUN: Hufilter -filter_35.txt:: Adguard
#"https://adguardteam.github.io/HostlistsRegistry/assets/filter_35.txt"
# === X 🔴 IDN: ABPindo -filter_22.txt:: Adguard
#"https://adguardteam.github.io/HostlistsRegistry/assets/filter_22.txt"
# === 🟢  IRN: PersianBlocker list -filter_19.txt:: Adguard
#"https://adguardteam.github.io/HostlistsRegistry/assets/filter_19.txt"
# === X 🔴 ISR: EasyList Hebrew -filter_43.txt:: Adguard
#"https://adguardteam.github.io/HostlistsRegistry/assets/filter_43.txt"
# === X 🔴 KOR: List-KR DNS -filter_25.txt:: Adguard
#"https://adguardteam.github.io/HostlistsRegistry/assets/filter_25.txt"
# === X 🔴 KOR: YousList -filter_15.txt:: Adguard
#"https://adguardteam.github.io/HostlistsRegistry/assets/filter_15.txt"
# === X 🔴 LIT: EasyList Lithuania -filter_36.txt:: Adguard
#"https://adguardteam.github.io/HostlistsRegistry/assets/filter_36.txt"
# === X 🔴 MKD: Macedonian Pi-hole Blocklist  -filter_20.txt:: Adguard
#"https://adguardteam.github.io/HostlistsRegistry/assets/filter_20.txt"
# === X 🔴 NOR: Dandelion Sprouts nordiske filtre -filter_13.txt:: Adguard
#"https://adguardteam.github.io/HostlistsRegistry/assets/filter_13.txt"
# === X 🔴 POL: CERT Polska List of malicious domains -filter_41.txt:: Adguard
#"https://adguardteam.github.io/HostlistsRegistry/assets/filter_41.txt"
# === X 🔴 POL: Polish filters for Pi-hole -filter_14.txt:: Adguard
#"https://adguardteam.github.io/HostlistsRegistry/assets/filter_14.txt"
# === X 🔴 SWE: Frellwit's Swedish Hosts File -filter_17.txt:: Adguard
#"https://adguardteam.github.io/HostlistsRegistry/assets/filter_17.txt"
# === 🟢  TUR: turk-adlist -filter_26.txt:: Adguard
"https://adguardteam.github.io/HostlistsRegistry/assets/filter_26.txt"
# === 🟢  TUR: Turkish Ad Hosts -filter_40.txt:: Adguard
"https://adguardteam.github.io/HostlistsRegistry/assets/filter_40.txt"
# === X 🔴 VNM: ABPVN List -filter_16.txt:: Adguard
#"https://adguardteam.github.io/HostlistsRegistry/assets/filter_16.txt"
# =========== ADG Security :: Adguard
# === 🟢  hishing URL Blocklist (PhishTank and OpenPhish -filter_30.txt:: Adguard
"https://adguardteam.github.io/HostlistsRegistry/assets/filter_30.txt"
# === 🟢  Dandelion Sprout's Anti-Malware List -filter_12.txt:: Adguard
"https://adguardteam.github.io/HostlistsRegistry/assets/filter_12.txt"
# === 🟢  HaGeZi's Badware Hoster Blocklist -filter_55.txt:: Adguard
"https://adguardteam.github.io/HostlistsRegistry/assets/filter_55.txt"
# === 🟢  HaGeZi's DynDNS Blocklist -filter_54.txt:: Adguard
"https://adguardteam.github.io/HostlistsRegistry/assets/filter_54.txt"
# === X 🔴 HaGeZi's Encrypted DNS/VPN/TOR/Proxy Bypass -filter_54.txt :: Adguard
#"https://adguardteam.github.io/HostlistsRegistry/assets/filter_54.txt"
# === 🟢  HaGeZi's The World's Most Abused TLDs -filter_56.txt:: Adguard
"https://adguardteam.github.io/HostlistsRegistry/assets/filter_56.txt"
# === X 🔴 HaGeZi's Threat Intelligence Feeds -filter_44.txt:: Adguard
#"https://adguardteam.github.io/HostlistsRegistry/assets/filter_44.txt"
# === 🟢  NoCoin Filter List -filter_8.txt:: Adguard
"https://adguardteam.github.io/HostlistsRegistry/assets/filter_8.txt"
# === 🟢  Phishing Army -filter_18.txt:: Adguard
"https://adguardteam.github.io/HostlistsRegistry/assets/filter_18.txt"
# === 🟢  Scam Blocklist by DurableNapkin -filter_10.txt:: Adguard
"https://adguardteam.github.io/HostlistsRegistry/assets/filter_10.txt"
# === 🟢  ShadowWhisperer's Malware List -filter_42.txt:: Adguard
"https://adguardteam.github.io/HostlistsRegistry/assets/filter_42.txt"
# === 🟢  Stalkerware Indicators List -filter_31.txt:: Adguard
"https://adguardteam.github.io/HostlistsRegistry/assets/filter_31.txt"
# === 🟢  The Big List of Hacked Malware Web Sites -filter_9.txt:: Adguard
"https://adguardteam.github.io/HostlistsRegistry/assets/filter_9.txt"
# === 🟢  uBlocko filters - Badware risks -filter_50.txt:: Adguard
"https://adguardteam.github.io/HostlistsRegistry/assets/filter_50.txt"
# === 🟢  Malicious URL Blocklist -filter_11.txt:: Adguard
"https://adguardteam.github.io/HostlistsRegistry/assets/filter_11.txt"
# =========== DNSFORGE
# ===  🟢 blocklist.list :: DNSFORGE
"https://dnsforge.de/blocklist.list"
# ===  🟢 hosts :: DNSFORGE
"https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts"
# ===  🟢 notrack-blocklist.txt :: DNSFORGE
"https://gitlab.com/quidsup/notrack-blocklists/raw/master/notrack-blocklist.txt"
# ===  🟢 notrack-malware.txt :: DNSFORGE
"https://gitlab.com/quidsup/notrack-blocklists/raw/master/notrack-malware.txt"
# ===  🟢 spy.txt :: DNSFORGE
"https://raw.githubusercontent.com/crazy-max/WindowsSpyBlocker/master/data/hosts/spy.txt"
# ===  🟢 oisd.nl :: DNSFORGE
"https://big.oisd.nl/"
# ===  🟢 basic.txt :: DNSFORGE
"https://blocklistproject.github.io/Lists/basic.txt"
# ===  🟢 phishing.txt :: DNSFORGE
"https://blocklistproject.github.io/Lists/phishing.txt"
# ===  🟢 ransomware.txt :: DNSFORGE
"https://blocklistproject.github.io/Lists/ransomware.txt"
# ===  🟢 tracking.txt :: DNSFORGE
"https://blocklistproject.github.io/Lists/tracking.txt"
# ===  🟢 domains.txt :: DNSFORGE
"https://hole.cert.pl/domains/v2/domains.txt"
# ===  🟢 adblock.txt :: DNSFORGE
"https://o0.pages.dev/Lite/adblock.txt"
# ===  🟢 AmazonFireTV.txt :: DNSFORGE
"https://perflyst.github.io/PiHoleBlocklist/AmazonFireTV.txt"
# ===  🟢 pro.txt :: DNSFORGE
"https://raw.githubusercontent.com/hagezi/dns-blocklists/main/adblock/pro.txt"
# ===  🟢 native.amazon.txt :: DNSFORGE
"https://raw.githubusercontent.com/hagezi/dns-blocklists/main/domains/native.amazon.txt"
# ===  🟢 native.apple.txt :: DNSFORGE
"https://raw.githubusercontent.com/hagezi/dns-blocklists/main/domains/native.apple.txt"
# ===  🟢 native.huawei.txt :: DNSFORGE
"https://raw.githubusercontent.com/hagezi/dns-blocklists/main/domains/native.huawei.txt"
# ===  🟢 native.winoffice.txt :: DNSFORGE
"https://raw.githubusercontent.com/hagezi/dns-blocklists/main/domains/native.winoffice.txt"
# ===  🟢 native.tiktok.txt :: DNSFORGE
"https://raw.githubusercontent.com/hagezi/dns-blocklists/main/domains/native.tiktok.txt"
# ===  🟢 native.lgwebos.txt :: DNSFORGE
"https://raw.githubusercontent.com/hagezi/dns-blocklists/main/domains/native.lgwebos.txt"
# ===  🟢 native.xiaomi.txt :: DNSFORGE
"https://raw.githubusercontent.com/hagezi/dns-blocklists/main/domains/native.xiaomi.txt"
# ===  🟢 native.oppo-realme.txt :: DNSFORGE
"https://raw.githubusercontent.com/hagezi/dns-blocklists/main/domains/native.oppo-realme.txt"
# ===  🟢 native.vivo.txt :: DNSFORGE
"https://raw.githubusercontent.com/hagezi/dns-blocklists/main/domains/native.vivo.txt"
# ===  🟢 quad9_blocklist.txt :: DNSFORGE
"https://raw.githubusercontent.com/AssoEchap/stalkerware-indicators/master/generated/quad9_blocklist.txt"
# ===  🟢 filter_50.txt :: DNSFORGE
"https://adguardteam.github.io/HostlistsRegistry/assets/filter_50.txt"
# ===  🟢 phishing_army_blocklist.txt :: DNSFORGE
"https://phishing.army/download/phishing_army_blocklist.txt"
# ===  🟢 d3host.txt :: DNSFORGE
"https://raw.githubusercontent.com/d3ward/toolz/master/src/d3host.txt"
# ===  🟢 phishing-filter-agh.txt :: DNSFORGE
"https://malware-filter.gitlab.io/malware-filter/phishing-filter-agh.txt"
# ===== gambling domain =====
# === X 🔴 gambling.txt :: DNSFORGE
#"https://raw.githubusercontent.com/hagezi/dns-blocklists/main/adblock/gambling.txt"
# =========== IRN
# ===  🟢 Persian -PersianBlocker-Deprecated.txt :: Persian
"https://github.com/MasterKia/PersianBlocker/raw/refs/heads/main/PersianBlocker-Deprecated.txt"
# ===  🟢 Persian -PersianBlockerAds-Domains.txt:: Persian
"https://github.com/MasterKia/PersianBlocker/raw/refs/heads/main/PersianBlockerAds-Domains.txt"
# ===  🟢 Persian -PersianBlockerAds-Hosts.txt:: Persian
"https://github.com/MasterKia/PersianBlocker/raw/refs/heads/main/PersianBlockerAds-Hosts.txt"
# ===  🟢 Persian -PersianBlockerAds.txt:: Persian
"https://github.com/MasterKia/PersianBlocker/raw/refs/heads/main/PersianBlockerAds.txt"
# ===  🟢 Persian -PersianBlockerHosts.txt:: Persian
"https://github.com/MasterKia/PersianBlocker/raw/refs/heads/main/PersianBlockerHosts.txt"
)

# ===== download =====
for url in "${urls[@]}"; do
  curl -sL "$url" >> raw.txt
  echo -e "\n" >> raw.txt
done

# ===== clean basic =====
grep -vE '^\s*$' raw.txt | \
grep -vE 'localhost|localdomain|broadcasthost' > cleaned.txt

# ===== remove duplicate =====
sort -u cleaned.txt > merged_clean.txt

# ===== whitelist =====
cat <<EOF > whitelist.txt
# ==== WHITELIST ====
# remove # to enable
@@||google.com^$important
@@||dns.google.com^$important
@@||cloudflare.com^$important
@@||cloudflare-dns.com^$important
@@||gstatic.com^$important
@@||dnsforge.de^$important
@@||mymax.top^$important
@@||dnsz.in^$important
@@||plusiptv.dnsz.in^$important
@@||tvdns.top^$important
@@||plusiptv.tvdns.top^$important
@@||media-shop.top^$important
@@||filimo.com^$important
@@||namava.ir^$important
@@||filmnet.ir^$important
@@||snapp.site^$important
@@||aptel.ir^$important
@@||soft98.ir^$important
@@||github.com^$important
@@||tailscale.com^$important
@@||zerotier.com^$important
@@||goodcloud.xyz^$important
@@||astrowarp.net^$important
@@||mail.google.com^$important
@@||drive.google.com^$important
@@||docs.google.com^$important
@@||calendar.google.com^$important
@@||accounts.google.com^$important
@@||scholar.google.com^$important
@@||youtubei.googleapis.com^$important
@@||maps.google.com^$important
@@||chat.google.com^$important
@@||translate.google.com^$important
@@||play.google.com^$important
@@||lens.google.com^$important
@@||chromewebstore.google.com^$important
@@||ssocks.tunnelbear.com^$important
#@@||icloud.com^$important
#@@||apple.com^$important
#@@||yahoo.com^$important
#@@||onedrive.com^$important
EOF

# ===== final =====
cat whitelist.txt merged_clean.txt > final.txt

mv final.txt merged.txt

# ===== clean =====
rm raw.txt cleaned.txt merged_clean.txt whitelist.txt

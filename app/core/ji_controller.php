<?php
    class JI_Controller extends SENE_Controller
    {
        public $site_name = 'Seme Address (ID)';
        public $site_name_admin = 'Seme Address Admin';
        public $site_version = '1.0.0';
        public $site_title = 'Seme address provider API';
        public $site_description = 'Multipurpose address provider, Indonesia version.';
        public $site_email = 'hi@thecloudalert.com';
        public $site_replyto = 'nyingspot@gmail.com';
        public $site_phone = '085861624300';
        public $site_suffix = ' - SEME Framework';
        public $site_suffix_admin = ' - Admin Seme Address';
        public $site_keyword = 'SEME Framework';
        public $page_current = 'beranda';
        public $menu_current = 'beranda';
        public $site_author = 'Cenah.co.id';
        public $site_company = '';
        public $site_address = '';
        public $user_login = 0;
        public $admin_login = 0;
        public $status = 404;
        public $message = 'Error, not found!';
        public $breadcrumbs;
        public $skins;

        public $cms_blog = 'media/blog';
        public $user_img = 'media/user/';
        public $user_toko = 'media/user/store/';
        public $produk_foto = 'media/produk/';
        public $produk_thumb = 'media/produk/thumb/';
        public $order_konfirmasi = 'media/order/konfirmasi/';
        public $order_qc = 'media/order/qc/';
        public $order_packing = 'media/order/packing/';
        public $order_resi = 'media/order/resi/';
        public $apikeys = 'IF8088,AK8088';

        public $fcm_server_token = '';
        public $cdn_url = '';
        public $is_strict_module = 1;
        public $is_strict_module2 = 0;
        public $current_parent = '';
        public $current_page = '';
        
        public function __construct()
        {
            parent::__construct();
            $this->breadcrumbs = array();
            $this->skins = new stdClass();
            $this->skins->front = base_url('skin/front/');
            $this->skins->homepage = base_url('skin/homepage/');
            $this->skins->admin = base_url('skin/admin/');
        }
        public function __init()
        {
            $data = array();
            $sess = $this->getKey();
            if (!is_object($sess)) {
                $sess = new stdClass();
            }
            if (!isset($sess->user)) {
                $sess->user = new stdClass();
            }
            if (isset($sess->user->id)) {
                $this->user_login = 1;
            }

            if (!isset($sess->admin)) {
                $sess->admin = new stdClass();
            }
            if (isset($sess->admin->id)) {
                $this->admin_login = 1;
            }
            $data['sess'] = $sess;
            $data['site_title'] = $this->site_title;
            $data['site_description'] = $this->site_description;
            $data['page_current'] = $this->page_current;
            $data['menu_current'] = $this->menu_current;
            $data['site_author'] = $this->site_author;
            $data['site_keyword'] = $this->site_keyword;
            $data['user_login'] = $this->user_login;
            $data['admin_login'] = $this->admin_login;
            $data['skins'] = $this->skins;

            $this->setTitle($this->site_title);
            $this->setDescription($this->description);
            $this->setRobots('INDEX,FOLLOW');
            $this->setAuthor($this->site_author);
            $this->setKeyword($this->site_keyword);
            $this->setIcon(base_url('favicon.png'));
            $this->setShortcutIcon(base_url('favicon.png'));

            return $data;
        }
        public function __jsonDataTable($data, $count, $another=array())
        {
            $this->lib('sene_json_engine', 'sene_json');
            $rdata = array();
            if (!is_array($data)) {
                $data = array();
            }
            $dt1 = array();
            $dt2 = array();
            if (!is_array($data)) {
                trigger_error('jsonDataTable first params need array!');
                die();
            }
            foreach ($data as $dat) {
                $dt2 = array();
                if (is_int($dat)) {
                    trigger_error('[ERROR: '.$dat.'] Data table not well performed because a query execution error!');
                }
                foreach ($dat as $dt) {
                    $dt2[] = $dt;
                }
                $dt1[] = $dt2;
            }

            if (is_array($another)) {
                $rdata = $another;
            }
            $rdata['data'] = $dt1;
            $rdata['recordsFiltered'] = $count;
            $rdata['recordsTotal'] = $count;
            $rdata['status'] = (int) $this->status;
            $rdata['message'] = $this->message;
            $this->sene_json->out($rdata);
            die();
        }

        public function __dateIndonesia($datetime, $utype='hari_tanggal')
        {
            if (is_null($datetime) || empty($datetime)) {
                $datetime='now';
            }
            $stt = strtotime($datetime);
            $bulan_ke = date('n', $stt);
            $bulan = 'Desember';
            switch ($bulan_ke) {
                case '1':
                    $bulan = 'Januari';
                    break;
                case '2':
                    $bulan = 'Februari';
                    break;
                case '3':
                    $bulan = 'Maret';
                    break;
                case '4':
                    $bulan = 'April';
                    break;
                case '5':
                    $bulan = 'Mei';
                    break;
                case '6':
                    $bulan = 'Juni';
                    break;
                case '7':
                    $bulan = 'Juli';
                    break;
                case '8':
                    $bulan = 'Agustus';
                    break;
                case '9':
                    $bulan = 'September';
                    break;
                case '10':
                    $bulan = 'Oktober';
                    break;
                case '11':
                    $bulan = 'November';
                    break;
                default:
                    $bulan = 'Desember';
            }
            $hari_ke = date('N', $stt);
            $hari = 'Minggu';
            switch ($hari_ke) {
                case '1':
                    $hari = 'Senin';
                    break;
                case '2':
                    $hari = 'Selasa';
                    break;
                case '3':
                    $hari = 'Rabu';
                    break;
                case '4':
                    $hari = 'Kamis';
                    break;
                case '5':
                    $hari = 'Jumat';
                    break;
                case '6':
                    $hari = 'Sabtu';
                    break;
                default:
                    $hari = 'Minggu';
            }
            $utype == strtolower($utype);
            if ($utype=="hari") {
                return $hari;
            }
            if ($utype=="jam") {
                return date('H:i', $stt).' WIB';
            }
            if ($utype=="bulan") {
                return $bulan;
            }
            if ($utype=="tahun") {
                return date('Y', $stt);
            }
            if ($utype=="bulan_tahun") {
                return $bulan.' '.date('Y', $stt);
            }
            if ($utype=="tanggal") {
                return ''.date('d', $stt).' '.$bulan.' '.date('Y', $stt);
            }
            if ($utype=="tanggal_jam") {
                return ''.date('d', $stt).' '.$bulan.' '.date('Y H:i', $stt).' WIB';
            }
            if ($utype=="hari_tanggal") {
                return $hari.', '.date('d', $stt).' '.$bulan.' '.date('Y', $stt);
            }
            if ($utype=="hari_tanggal_jam") {
                return $hari.', '.date('d', $stt).' '.$bulan.' '.date('Y H:i', $stt).' WIB';
            }
        }
        public function __validateDate($date, $format="Y-m-d H:i:s")
        {
            $d = DateTime::createFromFormat($format, $date);
            return $d && $d->format($format) == $date;
        }

        public function __format($str, $format="text")
        {
            $format = strtolower($format);
            if ($format == 'richtext') {
                $allowed_tags = '<div><h1><h2><h3><h4><u><hr><p><br><b><i><ul><ol><li><em><strong><quote><blockquote><p><time><sup><sub><table><tr><td><th><thead><tbody><tfoot>';
                return strip_tags($str, $allowed_tags);
            } elseif ($format == 'text') {
                return filter_var(trim($str), FILTER_SANITIZE_STRING);
            } else {
                return $str;
            }
        }
        public function __e($str, $format="text")
        {
            echo $this->__format($str, $format);
        }

        public function __pushNotif($tokens, $message, $title="Pemberitahuan")
        {
            if (!isset($this->fcm_server_token)) {
                trigger_error('$this->fcm_server_token undefined!');
                die();
            }
            if (strlen($this->fcm_server_token)<=10) {
                trigger_error('$this->fcm_server_token invalid!');
                die();
            }
            if (!is_array($tokens)) {
                trigger_error('Token not array, aborted!');
                die();
            }
            $url = 'https://fcm.googleapis.com/fcm/send';

            $msg = array('body' => $message, 'title' => $title);
            $fields = array('registration_ids' => $tokens, 'notification' => $msg);
            $headers = array(
            'Authorization:key = '.$this->fcm_server_token,
            'Content-Type: application/json'
            );

            $ch = curl_init();
            curl_setopt($ch, CURLOPT_URL, $url);
            curl_setopt($ch, CURLOPT_POST, true);
            curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
            curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
            curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 0);
            curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
            curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($fields));
            $result = curl_exec($ch);
            if ($result === false) {
                die('Curl failed: ' . curl_error($ch));
            }
            curl_close($ch);
            //error_log('FCM FIRE: '.$result);
            $jres = json_decode($result);
            if (isset($jres->success)) {
                return $jres;
            } else {
                $jres =  new stdClass();
                $jres->success = 0;
                $jres->failure = 1;
                return $jres;
            }
        }
        public function cdn_url($url="")
        {
            if (strlen($this->cdn_url)>6) {
                return $this->cdn_url.$url;
            } else {
                return base_url($url);
            }
        }

        //karena ini wajib jadi method ini harus ada... :P
        public function index()
        {
        }
    }

class Endpoint {
  const Endpoint._();

  static const baseUrlApi = 'https://pertanian.inotive.id/api';

  static const login = '/login-validate';
  static const getComodities = '/comodities';
  static const getDashboard = '/dashboard';
  static const getUserProfile = '/get-profile';
  static const editAccount = '/update-profile';
  static const postSaran = '/saran';
  static const postDataLaporan = '/laporan';
  static const getLaporan = '/laporan';
  static const getLaporanVerifikasi = '/laporan-verifikasi';
  static const deleteLaporan = '/delete-laporan';
  static const getVillages = '/villages';
  static const getListKecamatan = '/kecamatan';
  static const sendEmailResetPassword = '/forget-password';
  static const sendOTPResetPassword = '/check-otp';
  static const sendResetPassword = '/reset-password';
  static const exportLaporan = 'https://pertanian.inotive.id/export-laporan';
}

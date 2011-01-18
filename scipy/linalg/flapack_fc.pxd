from fwrap_ktp cimport *

cdef extern from "flapack_fc.h":
    ctypedef fwl_logical_t (*sgees_callback)(fwr_real_t*)
    ctypedef fwl_logical_t (*dgees_callback)(fwr_dbl_t*)
    ctypedef fwl_logical_t (*cgees_callback)(fwc_complex_t*)
    ctypedef fwl_logical_t (*zgees_callback)(fwc_complex_x16_t*)

    void cgbsv(fwi_integer_t * n, fwi_integer_t * kl, fwi_integer_t * ku, fwi_integer_t * nrhs, fwc_complex_t * ab, fwi_integer_t * ldab, fwi_integer_t * ipiv, fwc_complex_t * b, fwi_integer_t * ldb, fwi_integer_t * info)
    void cgbtrf(fwi_integer_t * m, fwi_integer_t * n, fwi_integer_t * kl, fwi_integer_t * ku, fwc_complex_t * ab, fwi_integer_t * ldab, fwi_integer_t * ipiv, fwi_integer_t * info)
    void cgbtrs(char * trans, fwi_integer_t * n, fwi_integer_t * kl, fwi_integer_t * ku, fwi_integer_t * nrhs, fwc_complex_t * ab, fwi_integer_t * ldab, fwi_integer_t * ipiv, fwc_complex_t * b, fwi_integer_t * ldb, fwi_integer_t * info, size_t trans_len_)
    void cgebal(char * job, fwi_integer_t * n, fwc_complex_t * a, fwi_integer_t * lda, fwi_integer_t * ilo, fwi_integer_t * ihi, fwr_real_t * scale, fwi_integer_t * info, size_t job_len_)
    void cgees(char * jobvs, char * sort, cgees_callback select, fwi_integer_t * n, fwc_complex_t * a, fwi_integer_t * lda, fwi_integer_t * sdim, fwc_complex_t * w, fwc_complex_t * vs, fwi_integer_t * ldvs, fwc_complex_t * work, fwi_integer_t * lwork, fwr_real_t * rwork, fwl_logical_t * bwork, fwi_integer_t * info, size_t jobvs_len_, size_t sort_len_)
    void cgeev(char * jobvl, char * jobvr, fwi_integer_t * n, fwc_complex_t * a, fwi_integer_t * lda, fwc_complex_t * w, fwc_complex_t * vl, fwi_integer_t * ldvl, fwc_complex_t * vr, fwi_integer_t * ldvr, fwc_complex_t * work, fwi_integer_t * lwork, fwr_real_t * rwork, fwi_integer_t * info, size_t jobvl_len_, size_t jobvr_len_)
    void cgegv(char * jobvl, char * jobvr, fwi_integer_t * n, fwc_complex_t * a, fwi_integer_t * lda, fwc_complex_t * b, fwi_integer_t * ldb, fwc_complex_t * alpha, fwc_complex_t * beta, fwc_complex_t * vl, fwi_integer_t * ldvl, fwc_complex_t * vr, fwi_integer_t * ldvr, fwc_complex_t * work, fwi_integer_t * lwork, fwr_real_t * rwork, fwi_integer_t * info, size_t jobvl_len_, size_t jobvr_len_)
    void cgehrd(fwi_integer_t * n, fwi_integer_t * ilo, fwi_integer_t * ihi, fwc_complex_t * a, fwi_integer_t * lda, fwc_complex_t * tau, fwc_complex_t * work, fwi_integer_t * lwork, fwi_integer_t * info)
    void cgelss(fwi_integer_t * m, fwi_integer_t * n, fwi_integer_t * nrhs, fwc_complex_t * a, fwi_integer_t * lda, fwc_complex_t * b, fwi_integer_t * ldb, fwr_real_t * s, fwr_real_t * rcond, fwi_integer_t * rank, fwc_complex_t * work, fwi_integer_t * lwork, fwr_real_t * rwork, fwi_integer_t * info)
    void cgeqrf(fwi_integer_t * m, fwi_integer_t * n, fwc_complex_t * a, fwi_integer_t * lda, fwc_complex_t * tau, fwc_complex_t * work, fwi_integer_t * lwork, fwi_integer_t * info)
    void cgerqf(fwi_integer_t * m, fwi_integer_t * n, fwc_complex_t * a, fwi_integer_t * lda, fwc_complex_t * tau, fwc_complex_t * work, fwi_integer_t * lwork, fwi_integer_t * info)
    void cgesdd(char * jobz, fwi_integer_t * m, fwi_integer_t * n, fwc_complex_t * a, fwi_integer_t * lda, fwr_real_t * s, fwc_complex_t * u, fwi_integer_t * ldu, fwc_complex_t * vt, fwi_integer_t * ldvt, fwc_complex_t * work, fwi_integer_t * lwork, fwr_real_t * rwork, fwi_integer_t * iwork, fwi_integer_t * info, size_t jobz_len_)
    void cgesv(fwi_integer_t * n, fwi_integer_t * nrhs, fwc_complex_t * a, fwi_integer_t * lda, fwi_integer_t * ipiv, fwc_complex_t * b, fwi_integer_t * ldb, fwi_integer_t * info)
    void cgetrf(fwi_integer_t * m, fwi_integer_t * n, fwc_complex_t * a, fwi_integer_t * lda, fwi_integer_t * ipiv, fwi_integer_t * info)
    void cgetri(fwi_integer_t * n, fwc_complex_t * a, fwi_integer_t * lda, fwi_integer_t * ipiv, fwc_complex_t * work, fwi_integer_t * lwork, fwi_integer_t * info)
    void cgetrs(char * trans, fwi_integer_t * n, fwi_integer_t * nrhs, fwc_complex_t * a, fwi_integer_t * lda, fwi_integer_t * ipiv, fwc_complex_t * b, fwi_integer_t * ldb, fwi_integer_t * info, size_t trans_len_)
    void cggev(char * jobvl, char * jobvr, fwi_integer_t * n, fwc_complex_t * a, fwi_integer_t * lda, fwc_complex_t * b, fwi_integer_t * ldb, fwc_complex_t * alpha, fwc_complex_t * beta, fwc_complex_t * vl, fwi_integer_t * ldvl, fwc_complex_t * vr, fwi_integer_t * ldvr, fwc_complex_t * work, fwi_integer_t * lwork, fwr_real_t * rwork, fwi_integer_t * info, size_t jobvl_len_, size_t jobvr_len_)
    void chbevd(char * jobz, char * uplo, fwi_integer_t * n, fwi_integer_t * kd, fwc_complex_t * ab, fwi_integer_t * ldab, fwr_real_t * w, fwc_complex_t * z, fwi_integer_t * ldz, fwc_complex_t * work, fwi_integer_t * lwork, fwr_real_t * rwork, fwi_integer_t * lrwork, fwi_integer_t * iwork, fwi_integer_t * liwork, fwi_integer_t * info, size_t jobz_len_, size_t uplo_len_)
    void chbevx(char * jobz, char * range, char * uplo, fwi_integer_t * n, fwi_integer_t * kd, fwc_complex_t * ab, fwi_integer_t * ldab, fwc_complex_t * q, fwi_integer_t * ldq, fwr_real_t * vl, fwr_real_t * vu, fwi_integer_t * il, fwi_integer_t * iu, fwr_real_t * abstol, fwi_integer_t * m, fwr_real_t * w, fwc_complex_t * z, fwi_integer_t * ldz, fwc_complex_t * work, fwr_real_t * rwork, fwi_integer_t * iwork, fwi_integer_t * ifail, fwi_integer_t * info, size_t jobz_len_, size_t range_len_, size_t uplo_len_)
    void cheev(char * jobz, char * uplo, fwi_integer_t * n, fwc_complex_t * a, fwi_integer_t * lda, fwr_real_t * w, fwc_complex_t * work, fwi_integer_t * lwork, fwr_real_t * rwork, fwi_integer_t * info, size_t jobz_len_, size_t uplo_len_)
    void cheevr(char * jobz, char * range, char * uplo, fwi_integer_t * n, fwc_complex_t * a, fwi_integer_t * lda, fwr_real_t * vl, fwr_real_t * vu, fwi_integer_t * il, fwi_integer_t * iu, fwr_real_t * abstol, fwi_integer_t * m, fwr_real_t * w, fwc_complex_t * z, fwi_integer_t * ldz, fwi_integer_t * isuppz, fwc_complex_t * work, fwi_integer_t * lwork, fwr_real_t * rwork, fwi_integer_t * lrwork, fwi_integer_t * iwork, fwi_integer_t * liwork, fwi_integer_t * info, size_t jobz_len_, size_t range_len_, size_t uplo_len_)
    void chegv(fwi_integer_t * itype, char * jobz, char * uplo, fwi_integer_t * n, fwc_complex_t * a, fwi_integer_t * lda, fwc_complex_t * b, fwi_integer_t * ldb, fwr_real_t * w, fwc_complex_t * work, fwi_integer_t * lwork, fwr_real_t * rwork, fwi_integer_t * info, size_t jobz_len_, size_t uplo_len_)
    void chegvd(fwi_integer_t * itype, char * jobz, char * uplo, fwi_integer_t * n, fwc_complex_t * a, fwi_integer_t * lda, fwc_complex_t * b, fwi_integer_t * ldb, fwr_real_t * w, fwc_complex_t * work, fwi_integer_t * lwork, fwr_real_t * rwork, fwi_integer_t * lrwork, fwi_integer_t * iwork, fwi_integer_t * liwork, fwi_integer_t * info, size_t jobz_len_, size_t uplo_len_)
    void chegvx(fwi_integer_t * itype, char * jobz, char * range, char * uplo, fwi_integer_t * n, fwc_complex_t * a, fwi_integer_t * lda, fwc_complex_t * b, fwi_integer_t * ldb, fwr_real_t * vl, fwr_real_t * vu, fwi_integer_t * il, fwi_integer_t * iu, fwr_real_t * abstol, fwi_integer_t * m, fwr_real_t * w, fwc_complex_t * z, fwi_integer_t * ldz, fwc_complex_t * work, fwi_integer_t * lwork, fwr_real_t * rwork, fwi_integer_t * iwork, fwi_integer_t * ifail, fwi_integer_t * info, size_t jobz_len_, size_t range_len_, size_t uplo_len_)
    void claswp(fwi_integer_t * n, fwc_complex_t * a, fwi_integer_t * lda, fwi_integer_t * k1, fwi_integer_t * k2, fwi_integer_t * ipiv, fwi_integer_t * incx)
    void clauum(char * uplo, fwi_integer_t * n, fwc_complex_t * a, fwi_integer_t * lda, fwi_integer_t * info, size_t uplo_len_)
    void cpbsv(char * uplo, fwi_integer_t * n, fwi_integer_t * kd, fwi_integer_t * nrhs, fwc_complex_t * ab, fwi_integer_t * ldab, fwc_complex_t * b, fwi_integer_t * ldb, fwi_integer_t * info, size_t uplo_len_)
    void cpbtrf(char * uplo, fwi_integer_t * n, fwi_integer_t * kd, fwc_complex_t * ab, fwi_integer_t * ldab, fwi_integer_t * info, size_t uplo_len_)
    void cpbtrs(char * uplo, fwi_integer_t * n, fwi_integer_t * kd, fwi_integer_t * nrhs, fwc_complex_t * ab, fwi_integer_t * ldab, fwc_complex_t * b, fwi_integer_t * ldb, fwi_integer_t * info, size_t uplo_len_)
    void cposv(char * uplo, fwi_integer_t * n, fwi_integer_t * nrhs, fwc_complex_t * a, fwi_integer_t * lda, fwc_complex_t * b, fwi_integer_t * ldb, fwi_integer_t * info, size_t uplo_len_)
    void cpotrf(char * uplo, fwi_integer_t * n, fwc_complex_t * a, fwi_integer_t * lda, fwi_integer_t * info, size_t uplo_len_)
    void cpotri(char * uplo, fwi_integer_t * n, fwc_complex_t * a, fwi_integer_t * lda, fwi_integer_t * info, size_t uplo_len_)
    void cpotrs(char * uplo, fwi_integer_t * n, fwi_integer_t * nrhs, fwc_complex_t * a, fwi_integer_t * lda, fwc_complex_t * b, fwi_integer_t * ldb, fwi_integer_t * info, size_t uplo_len_)
    void ctrtri(char * uplo, char * diag, fwi_integer_t * n, fwc_complex_t * a, fwi_integer_t * lda, fwi_integer_t * info, size_t uplo_len_, size_t diag_len_)
    void ctrtrs(char * uplo, char * trans, char * diag, fwi_integer_t * n, fwi_integer_t * nrhs, fwc_complex_t * a, fwi_integer_t * lda, fwc_complex_t * b, fwi_integer_t * ldb, fwi_integer_t * info, size_t uplo_len_, size_t trans_len_, size_t diag_len_)
    void cungqr(fwi_integer_t * m, fwi_integer_t * n, fwi_integer_t * k, fwc_complex_t * a, fwi_integer_t * lda, fwc_complex_t * tau, fwc_complex_t * work, fwi_integer_t * lwork, fwi_integer_t * info)
    void dgbsv(fwi_integer_t * n, fwi_integer_t * kl, fwi_integer_t * ku, fwi_integer_t * nrhs, fwr_dbl_t * ab, fwi_integer_t * ldab, fwi_integer_t * ipiv, fwr_dbl_t * b, fwi_integer_t * ldb, fwi_integer_t * info)
    void dgbtrf(fwi_integer_t * m, fwi_integer_t * n, fwi_integer_t * kl, fwi_integer_t * ku, fwr_dbl_t * ab, fwi_integer_t * ldab, fwi_integer_t * ipiv, fwi_integer_t * info)
    void dgbtrs(char * trans, fwi_integer_t * n, fwi_integer_t * kl, fwi_integer_t * ku, fwi_integer_t * nrhs, fwr_dbl_t * ab, fwi_integer_t * ldab, fwi_integer_t * ipiv, fwr_dbl_t * b, fwi_integer_t * ldb, fwi_integer_t * info, size_t trans_len_)
    void dgebal(char * job, fwi_integer_t * n, fwr_dbl_t * a, fwi_integer_t * lda, fwi_integer_t * ilo, fwi_integer_t * ihi, fwr_dbl_t * scale, fwi_integer_t * info, size_t job_len_)
    void dgees(char * jobvs, char * sort, dgees_callback select, fwi_integer_t * n, fwr_dbl_t * a, fwi_integer_t * lda, fwi_integer_t * sdim, fwr_dbl_t * wr, fwr_dbl_t * wi, fwr_dbl_t * vs, fwi_integer_t * ldvs, fwr_dbl_t * work, fwi_integer_t * lwork, fwl_logical_t * bwork, fwi_integer_t * info, size_t jobvs_len_, size_t sort_len_)
    void dgeev(char * jobvl, char * jobvr, fwi_integer_t * n, fwr_dbl_t * a, fwi_integer_t * lda, fwr_dbl_t * wr, fwr_dbl_t * wi, fwr_dbl_t * vl, fwi_integer_t * ldvl, fwr_dbl_t * vr, fwi_integer_t * ldvr, fwr_dbl_t * work, fwi_integer_t * lwork, fwi_integer_t * info, size_t jobvl_len_, size_t jobvr_len_)
    void dgegv(char * jobvl, char * jobvr, fwi_integer_t * n, fwr_dbl_t * a, fwi_integer_t * lda, fwr_dbl_t * b, fwi_integer_t * ldb, fwr_dbl_t * alphar, fwr_dbl_t * alphai, fwr_dbl_t * beta, fwr_dbl_t * vl, fwi_integer_t * ldvl, fwr_dbl_t * vr, fwi_integer_t * ldvr, fwr_dbl_t * work, fwi_integer_t * lwork, fwi_integer_t * info, size_t jobvl_len_, size_t jobvr_len_)
    void dgehrd(fwi_integer_t * n, fwi_integer_t * ilo, fwi_integer_t * ihi, fwr_dbl_t * a, fwi_integer_t * lda, fwr_dbl_t * tau, fwr_dbl_t * work, fwi_integer_t * lwork, fwi_integer_t * info)
    void dgelss(fwi_integer_t * m, fwi_integer_t * n, fwi_integer_t * nrhs, fwr_dbl_t * a, fwi_integer_t * lda, fwr_dbl_t * b, fwi_integer_t * ldb, fwr_dbl_t * s, fwr_dbl_t * rcond, fwi_integer_t * rank, fwr_dbl_t * work, fwi_integer_t * lwork, fwi_integer_t * info)
    void dgeqrf(fwi_integer_t * m, fwi_integer_t * n, fwr_dbl_t * a, fwi_integer_t * lda, fwr_dbl_t * tau, fwr_dbl_t * work, fwi_integer_t * lwork, fwi_integer_t * info)
    void dgerqf(fwi_integer_t * m, fwi_integer_t * n, fwr_dbl_t * a, fwi_integer_t * lda, fwr_dbl_t * tau, fwr_dbl_t * work, fwi_integer_t * lwork, fwi_integer_t * info)
    void dgesdd(char * jobz, fwi_integer_t * m, fwi_integer_t * n, fwr_dbl_t * a, fwi_integer_t * lda, fwr_dbl_t * s, fwr_dbl_t * u, fwi_integer_t * ldu, fwr_dbl_t * vt, fwi_integer_t * ldvt, fwr_dbl_t * work, fwi_integer_t * lwork, fwi_integer_t * iwork, fwi_integer_t * info, size_t jobz_len_)
    void dgesv(fwi_integer_t * n, fwi_integer_t * nrhs, fwr_dbl_t * a, fwi_integer_t * lda, fwi_integer_t * ipiv, fwr_dbl_t * b, fwi_integer_t * ldb, fwi_integer_t * info)
    void dgetrf(fwi_integer_t * m, fwi_integer_t * n, fwr_dbl_t * a, fwi_integer_t * lda, fwi_integer_t * ipiv, fwi_integer_t * info)
    void dgetri(fwi_integer_t * n, fwr_dbl_t * a, fwi_integer_t * lda, fwi_integer_t * ipiv, fwr_dbl_t * work, fwi_integer_t * lwork, fwi_integer_t * info)
    void dgetrs(char * trans, fwi_integer_t * n, fwi_integer_t * nrhs, fwr_dbl_t * a, fwi_integer_t * lda, fwi_integer_t * ipiv, fwr_dbl_t * b, fwi_integer_t * ldb, fwi_integer_t * info, size_t trans_len_)
    void dggev(char * jobvl, char * jobvr, fwi_integer_t * n, fwr_dbl_t * a, fwi_integer_t * lda, fwr_dbl_t * b, fwi_integer_t * ldb, fwr_dbl_t * alphar, fwr_dbl_t * alphai, fwr_dbl_t * beta, fwr_dbl_t * vl, fwi_integer_t * ldvl, fwr_dbl_t * vr, fwi_integer_t * ldvr, fwr_dbl_t * work, fwi_integer_t * lwork, fwi_integer_t * info, size_t jobvl_len_, size_t jobvr_len_)
    fwr_dbl_t dlamch(char * cmach, size_t cmach_len_)
    void dlaswp(fwi_integer_t * n, fwr_dbl_t * a, fwi_integer_t * lda, fwi_integer_t * k1, fwi_integer_t * k2, fwi_integer_t * ipiv, fwi_integer_t * incx)
    void dlauum(char * uplo, fwi_integer_t * n, fwr_dbl_t * a, fwi_integer_t * lda, fwi_integer_t * info, size_t uplo_len_)
    void dorgqr(fwi_integer_t * m, fwi_integer_t * n, fwi_integer_t * k, fwr_dbl_t * a, fwi_integer_t * lda, fwr_dbl_t * tau, fwr_dbl_t * work, fwi_integer_t * lwork, fwi_integer_t * info)
    void dpbsv(char * uplo, fwi_integer_t * n, fwi_integer_t * kd, fwi_integer_t * nrhs, fwr_dbl_t * ab, fwi_integer_t * ldab, fwr_dbl_t * b, fwi_integer_t * ldb, fwi_integer_t * info, size_t uplo_len_)
    void dpbtrf(char * uplo, fwi_integer_t * n, fwi_integer_t * kd, fwr_dbl_t * ab, fwi_integer_t * ldab, fwi_integer_t * info, size_t uplo_len_)
    void dpbtrs(char * uplo, fwi_integer_t * n, fwi_integer_t * kd, fwi_integer_t * nrhs, fwr_dbl_t * ab, fwi_integer_t * ldab, fwr_dbl_t * b, fwi_integer_t * ldb, fwi_integer_t * info, size_t uplo_len_)
    void dposv(char * uplo, fwi_integer_t * n, fwi_integer_t * nrhs, fwr_dbl_t * a, fwi_integer_t * lda, fwr_dbl_t * b, fwi_integer_t * ldb, fwi_integer_t * info, size_t uplo_len_)
    void dpotrf(char * uplo, fwi_integer_t * n, fwr_dbl_t * a, fwi_integer_t * lda, fwi_integer_t * info, size_t uplo_len_)
    void dpotri(char * uplo, fwi_integer_t * n, fwr_dbl_t * a, fwi_integer_t * lda, fwi_integer_t * info, size_t uplo_len_)
    void dpotrs(char * uplo, fwi_integer_t * n, fwi_integer_t * nrhs, fwr_dbl_t * a, fwi_integer_t * lda, fwr_dbl_t * b, fwi_integer_t * ldb, fwi_integer_t * info, size_t uplo_len_)
    void dsbev(char * jobz, char * uplo, fwi_integer_t * n, fwi_integer_t * kd, fwr_dbl_t * ab, fwi_integer_t * ldab, fwr_dbl_t * w, fwr_dbl_t * z, fwi_integer_t * ldz, fwr_dbl_t * work, fwi_integer_t * info, size_t jobz_len_, size_t uplo_len_)
    void dsbevd(char * jobz, char * uplo, fwi_integer_t * n, fwi_integer_t * kd, fwr_dbl_t * ab, fwi_integer_t * ldab, fwr_dbl_t * w, fwr_dbl_t * z, fwi_integer_t * ldz, fwr_dbl_t * work, fwi_integer_t * lwork, fwi_integer_t * iwork, fwi_integer_t * liwork, fwi_integer_t * info, size_t jobz_len_, size_t uplo_len_)
    void dsbevx(char * jobz, char * range, char * uplo, fwi_integer_t * n, fwi_integer_t * kd, fwr_dbl_t * ab, fwi_integer_t * ldab, fwr_dbl_t * q, fwi_integer_t * ldq, fwr_dbl_t * vl, fwr_dbl_t * vu, fwi_integer_t * il, fwi_integer_t * iu, fwr_dbl_t * abstol, fwi_integer_t * m, fwr_dbl_t * w, fwr_dbl_t * z, fwi_integer_t * ldz, fwr_dbl_t * work, fwi_integer_t * iwork, fwi_integer_t * ifail, fwi_integer_t * info, size_t jobz_len_, size_t range_len_, size_t uplo_len_)
    void dsyev(char * jobz, char * uplo, fwi_integer_t * n, fwr_dbl_t * a, fwi_integer_t * lda, fwr_dbl_t * w, fwr_dbl_t * work, fwi_integer_t * lwork, fwi_integer_t * info, size_t jobz_len_, size_t uplo_len_)
    void dsyevr(char * jobz, char * range, char * uplo, fwi_integer_t * n, fwr_dbl_t * a, fwi_integer_t * lda, fwr_dbl_t * vl, fwr_dbl_t * vu, fwi_integer_t * il, fwi_integer_t * iu, fwr_dbl_t * abstol, fwi_integer_t * m, fwr_dbl_t * w, fwr_dbl_t * z, fwi_integer_t * ldz, fwi_integer_t * isuppz, fwr_dbl_t * work, fwi_integer_t * lwork, fwi_integer_t * iwork, fwi_integer_t * liwork, fwi_integer_t * info, size_t jobz_len_, size_t range_len_, size_t uplo_len_)
    void dsygv(fwi_integer_t * itype, char * jobz, char * uplo, fwi_integer_t * n, fwr_dbl_t * a, fwi_integer_t * lda, fwr_dbl_t * b, fwi_integer_t * ldb, fwr_dbl_t * w, fwr_dbl_t * work, fwi_integer_t * lwork, fwi_integer_t * info, size_t jobz_len_, size_t uplo_len_)
    void dsygvd(fwi_integer_t * itype, char * jobz, char * uplo, fwi_integer_t * n, fwr_dbl_t * a, fwi_integer_t * lda, fwr_dbl_t * b, fwi_integer_t * ldb, fwr_dbl_t * w, fwr_dbl_t * work, fwi_integer_t * lwork, fwi_integer_t * iwork, fwi_integer_t * liwork, fwi_integer_t * info, size_t jobz_len_, size_t uplo_len_)
    void dsygvx(fwi_integer_t * itype, char * jobz, char * range, char * uplo, fwi_integer_t * n, fwr_dbl_t * a, fwi_integer_t * lda, fwr_dbl_t * b, fwi_integer_t * ldb, fwr_dbl_t * vl, fwr_dbl_t * vu, fwi_integer_t * il, fwi_integer_t * iu, fwr_dbl_t * abstol, fwi_integer_t * m, fwr_dbl_t * w, fwr_dbl_t * z, fwi_integer_t * ldz, fwr_dbl_t * work, fwi_integer_t * lwork, fwi_integer_t * iwork, fwi_integer_t * ifail, fwi_integer_t * info, size_t jobz_len_, size_t range_len_, size_t uplo_len_)
    void dtrtri(char * uplo, char * diag, fwi_integer_t * n, fwr_dbl_t * a, fwi_integer_t * lda, fwi_integer_t * info, size_t uplo_len_, size_t diag_len_)
    void dtrtrs(char * uplo, char * trans, char * diag, fwi_integer_t * n, fwi_integer_t * nrhs, fwr_dbl_t * a, fwi_integer_t * lda, fwr_dbl_t * b, fwi_integer_t * ldb, fwi_integer_t * info, size_t uplo_len_, size_t trans_len_, size_t diag_len_)
    void sgbsv(fwi_integer_t * n, fwi_integer_t * kl, fwi_integer_t * ku, fwi_integer_t * nrhs, fwr_real_t * ab, fwi_integer_t * ldab, fwi_integer_t * ipiv, fwr_real_t * b, fwi_integer_t * ldb, fwi_integer_t * info)
    void sgbtrf(fwi_integer_t * m, fwi_integer_t * n, fwi_integer_t * kl, fwi_integer_t * ku, fwr_real_t * ab, fwi_integer_t * ldab, fwi_integer_t * ipiv, fwi_integer_t * info)
    void sgbtrs(char * trans, fwi_integer_t * n, fwi_integer_t * kl, fwi_integer_t * ku, fwi_integer_t * nrhs, fwr_real_t * ab, fwi_integer_t * ldab, fwi_integer_t * ipiv, fwr_real_t * b, fwi_integer_t * ldb, fwi_integer_t * info, size_t trans_len_)
    void sgebal(char * job, fwi_integer_t * n, fwr_real_t * a, fwi_integer_t * lda, fwi_integer_t * ilo, fwi_integer_t * ihi, fwr_real_t * scale, fwi_integer_t * info, size_t job_len_)
    void sgees(char * jobvs, char * sort, sgees_callback select, fwi_integer_t * n, fwr_real_t * a, fwi_integer_t * lda, fwi_integer_t * sdim, fwr_real_t * wr, fwr_real_t * wi, fwr_real_t * vs, fwi_integer_t * ldvs, fwr_real_t * work, fwi_integer_t * lwork, fwl_logical_t * bwork, fwi_integer_t * info, size_t jobvs_len_, size_t sort_len_)
    void sgeev(char * jobvl, char * jobvr, fwi_integer_t * n, fwr_real_t * a, fwi_integer_t * lda, fwr_real_t * wr, fwr_real_t * wi, fwr_real_t * vl, fwi_integer_t * ldvl, fwr_real_t * vr, fwi_integer_t * ldvr, fwr_real_t * work, fwi_integer_t * lwork, fwi_integer_t * info, size_t jobvl_len_, size_t jobvr_len_)
    void sgegv(char * jobvl, char * jobvr, fwi_integer_t * n, fwr_real_t * a, fwi_integer_t * lda, fwr_real_t * b, fwi_integer_t * ldb, fwr_real_t * alphar, fwr_real_t * alphai, fwr_real_t * beta, fwr_real_t * vl, fwi_integer_t * ldvl, fwr_real_t * vr, fwi_integer_t * ldvr, fwr_real_t * work, fwi_integer_t * lwork, fwi_integer_t * info, size_t jobvl_len_, size_t jobvr_len_)
    void sgehrd(fwi_integer_t * n, fwi_integer_t * ilo, fwi_integer_t * ihi, fwr_real_t * a, fwi_integer_t * lda, fwr_real_t * tau, fwr_real_t * work, fwi_integer_t * lwork, fwi_integer_t * info)
    void sgelss(fwi_integer_t * m, fwi_integer_t * n, fwi_integer_t * nrhs, fwr_real_t * a, fwi_integer_t * lda, fwr_real_t * b, fwi_integer_t * ldb, fwr_real_t * s, fwr_real_t * rcond, fwi_integer_t * rank, fwr_real_t * work, fwi_integer_t * lwork, fwi_integer_t * info)
    void sgeqrf(fwi_integer_t * m, fwi_integer_t * n, fwr_real_t * a, fwi_integer_t * lda, fwr_real_t * tau, fwr_real_t * work, fwi_integer_t * lwork, fwi_integer_t * info)
    void sgerqf(fwi_integer_t * m, fwi_integer_t * n, fwr_real_t * a, fwi_integer_t * lda, fwr_real_t * tau, fwr_real_t * work, fwi_integer_t * lwork, fwi_integer_t * info)
    void sgesdd(char * jobz, fwi_integer_t * m, fwi_integer_t * n, fwr_real_t * a, fwi_integer_t * lda, fwr_real_t * s, fwr_real_t * u, fwi_integer_t * ldu, fwr_real_t * vt, fwi_integer_t * ldvt, fwr_real_t * work, fwi_integer_t * lwork, fwi_integer_t * iwork, fwi_integer_t * info, size_t jobz_len_)
    void sgesv(fwi_integer_t * n, fwi_integer_t * nrhs, fwr_real_t * a, fwi_integer_t * lda, fwi_integer_t * ipiv, fwr_real_t * b, fwi_integer_t * ldb, fwi_integer_t * info)
    void sgetrf(fwi_integer_t * m, fwi_integer_t * n, fwr_real_t * a, fwi_integer_t * lda, fwi_integer_t * ipiv, fwi_integer_t * info)
    void sgetri(fwi_integer_t * n, fwr_real_t * a, fwi_integer_t * lda, fwi_integer_t * ipiv, fwr_real_t * work, fwi_integer_t * lwork, fwi_integer_t * info)
    void sgetrs(char * trans, fwi_integer_t * n, fwi_integer_t * nrhs, fwr_real_t * a, fwi_integer_t * lda, fwi_integer_t * ipiv, fwr_real_t * b, fwi_integer_t * ldb, fwi_integer_t * info, size_t trans_len_)
    void sggev(char * jobvl, char * jobvr, fwi_integer_t * n, fwr_real_t * a, fwi_integer_t * lda, fwr_real_t * b, fwi_integer_t * ldb, fwr_real_t * alphar, fwr_real_t * alphai, fwr_real_t * beta, fwr_real_t * vl, fwi_integer_t * ldvl, fwr_real_t * vr, fwi_integer_t * ldvr, fwr_real_t * work, fwi_integer_t * lwork, fwi_integer_t * info, size_t jobvl_len_, size_t jobvr_len_)
    fwr_real_t slamch(char * cmach, size_t cmach_len_)
    void slaswp(fwi_integer_t * n, fwr_real_t * a, fwi_integer_t * lda, fwi_integer_t * k1, fwi_integer_t * k2, fwi_integer_t * ipiv, fwi_integer_t * incx)
    void slauum(char * uplo, fwi_integer_t * n, fwr_real_t * a, fwi_integer_t * lda, fwi_integer_t * info, size_t uplo_len_)
    void sorgqr(fwi_integer_t * m, fwi_integer_t * n, fwi_integer_t * k, fwr_real_t * a, fwi_integer_t * lda, fwr_real_t * tau, fwr_real_t * work, fwi_integer_t * lwork, fwi_integer_t * info)
    void spbsv(char * uplo, fwi_integer_t * n, fwi_integer_t * kd, fwi_integer_t * nrhs, fwr_real_t * ab, fwi_integer_t * ldab, fwr_real_t * b, fwi_integer_t * ldb, fwi_integer_t * info, size_t uplo_len_)
    void spbtrf(char * uplo, fwi_integer_t * n, fwi_integer_t * kd, fwr_real_t * ab, fwi_integer_t * ldab, fwi_integer_t * info, size_t uplo_len_)
    void spbtrs(char * uplo, fwi_integer_t * n, fwi_integer_t * kd, fwi_integer_t * nrhs, fwr_real_t * ab, fwi_integer_t * ldab, fwr_real_t * b, fwi_integer_t * ldb, fwi_integer_t * info, size_t uplo_len_)
    void sposv(char * uplo, fwi_integer_t * n, fwi_integer_t * nrhs, fwr_real_t * a, fwi_integer_t * lda, fwr_real_t * b, fwi_integer_t * ldb, fwi_integer_t * info, size_t uplo_len_)
    void spotrf(char * uplo, fwi_integer_t * n, fwr_real_t * a, fwi_integer_t * lda, fwi_integer_t * info, size_t uplo_len_)
    void spotri(char * uplo, fwi_integer_t * n, fwr_real_t * a, fwi_integer_t * lda, fwi_integer_t * info, size_t uplo_len_)
    void spotrs(char * uplo, fwi_integer_t * n, fwi_integer_t * nrhs, fwr_real_t * a, fwi_integer_t * lda, fwr_real_t * b, fwi_integer_t * ldb, fwi_integer_t * info, size_t uplo_len_)
    void ssbev(char * jobz, char * uplo, fwi_integer_t * n, fwi_integer_t * kd, fwr_real_t * ab, fwi_integer_t * ldab, fwr_real_t * w, fwr_real_t * z, fwi_integer_t * ldz, fwr_real_t * work, fwi_integer_t * info, size_t jobz_len_, size_t uplo_len_)
    void ssbevd(char * jobz, char * uplo, fwi_integer_t * n, fwi_integer_t * kd, fwr_real_t * ab, fwi_integer_t * ldab, fwr_real_t * w, fwr_real_t * z, fwi_integer_t * ldz, fwr_real_t * work, fwi_integer_t * lwork, fwi_integer_t * iwork, fwi_integer_t * liwork, fwi_integer_t * info, size_t jobz_len_, size_t uplo_len_)
    void ssbevx(char * jobz, char * range, char * uplo, fwi_integer_t * n, fwi_integer_t * kd, fwr_real_t * ab, fwi_integer_t * ldab, fwr_real_t * q, fwi_integer_t * ldq, fwr_real_t * vl, fwr_real_t * vu, fwi_integer_t * il, fwi_integer_t * iu, fwr_real_t * abstol, fwi_integer_t * m, fwr_real_t * w, fwr_real_t * z, fwi_integer_t * ldz, fwr_real_t * work, fwi_integer_t * iwork, fwi_integer_t * ifail, fwi_integer_t * info, size_t jobz_len_, size_t range_len_, size_t uplo_len_)
    void ssyev(char * jobz, char * uplo, fwi_integer_t * n, fwr_real_t * a, fwi_integer_t * lda, fwr_real_t * w, fwr_real_t * work, fwi_integer_t * lwork, fwi_integer_t * info, size_t jobz_len_, size_t uplo_len_)
    void ssyevr(char * jobz, char * range, char * uplo, fwi_integer_t * n, fwr_real_t * a, fwi_integer_t * lda, fwr_real_t * vl, fwr_real_t * vu, fwi_integer_t * il, fwi_integer_t * iu, fwr_real_t * abstol, fwi_integer_t * m, fwr_real_t * w, fwr_real_t * z, fwi_integer_t * ldz, fwi_integer_t * isuppz, fwr_real_t * work, fwi_integer_t * lwork, fwi_integer_t * iwork, fwi_integer_t * liwork, fwi_integer_t * info, size_t jobz_len_, size_t range_len_, size_t uplo_len_)
    void ssygv(fwi_integer_t * itype, char * jobz, char * uplo, fwi_integer_t * n, fwr_real_t * a, fwi_integer_t * lda, fwr_real_t * b, fwi_integer_t * ldb, fwr_real_t * w, fwr_real_t * work, fwi_integer_t * lwork, fwi_integer_t * info, size_t jobz_len_, size_t uplo_len_)
    void ssygvd(fwi_integer_t * itype, char * jobz, char * uplo, fwi_integer_t * n, fwr_real_t * a, fwi_integer_t * lda, fwr_real_t * b, fwi_integer_t * ldb, fwr_real_t * w, fwr_real_t * work, fwi_integer_t * lwork, fwi_integer_t * iwork, fwi_integer_t * liwork, fwi_integer_t * info, size_t jobz_len_, size_t uplo_len_)
    void ssygvx(fwi_integer_t * itype, char * jobz, char * range, char * uplo, fwi_integer_t * n, fwr_real_t * a, fwi_integer_t * lda, fwr_real_t * b, fwi_integer_t * ldb, fwr_real_t * vl, fwr_real_t * vu, fwi_integer_t * il, fwi_integer_t * iu, fwr_real_t * abstol, fwi_integer_t * m, fwr_real_t * w, fwr_real_t * z, fwi_integer_t * ldz, fwr_real_t * work, fwi_integer_t * lwork, fwi_integer_t * iwork, fwi_integer_t * ifail, fwi_integer_t * info, size_t jobz_len_, size_t range_len_, size_t uplo_len_)
    void strtri(char * uplo, char * diag, fwi_integer_t * n, fwr_real_t * a, fwi_integer_t * lda, fwi_integer_t * info, size_t uplo_len_, size_t diag_len_)
    void strtrs(char * uplo, char * trans, char * diag, fwi_integer_t * n, fwi_integer_t * nrhs, fwr_real_t * a, fwi_integer_t * lda, fwr_real_t * b, fwi_integer_t * ldb, fwi_integer_t * info, size_t uplo_len_, size_t trans_len_, size_t diag_len_)
    void zgbsv(fwi_integer_t * n, fwi_integer_t * kl, fwi_integer_t * ku, fwi_integer_t * nrhs, fwc_complex_x16_t * ab, fwi_integer_t * ldab, fwi_integer_t * ipiv, fwc_complex_x16_t * b, fwi_integer_t * ldb, fwi_integer_t * info)
    void zgbtrf(fwi_integer_t * m, fwi_integer_t * n, fwi_integer_t * kl, fwi_integer_t * ku, fwc_complex_x16_t * ab, fwi_integer_t * ldab, fwi_integer_t * ipiv, fwi_integer_t * info)
    void zgbtrs(char * trans, fwi_integer_t * n, fwi_integer_t * kl, fwi_integer_t * ku, fwi_integer_t * nrhs, fwc_complex_x16_t * ab, fwi_integer_t * ldab, fwi_integer_t * ipiv, fwc_complex_x16_t * b, fwi_integer_t * ldb, fwi_integer_t * info, size_t trans_len_)
    void zgebal(char * job, fwi_integer_t * n, fwc_complex_x16_t * a, fwi_integer_t * lda, fwi_integer_t * ilo, fwi_integer_t * ihi, fwr_dbl_t * scale, fwi_integer_t * info, size_t job_len_)
    void zgees(char * jobvs, char * sort, zgees_callback select, fwi_integer_t * n, fwc_complex_x16_t * a, fwi_integer_t * lda, fwi_integer_t * sdim, fwc_complex_x16_t * w, fwc_complex_x16_t * vs, fwi_integer_t * ldvs, fwc_complex_x16_t * work, fwi_integer_t * lwork, fwr_dbl_t * rwork, fwl_logical_t * bwork, fwi_integer_t * info, size_t jobvs_len_, size_t sort_len_)
    void zgeev(char * jobvl, char * jobvr, fwi_integer_t * n, fwc_complex_x16_t * a, fwi_integer_t * lda, fwc_complex_x16_t * w, fwc_complex_x16_t * vl, fwi_integer_t * ldvl, fwc_complex_x16_t * vr, fwi_integer_t * ldvr, fwc_complex_x16_t * work, fwi_integer_t * lwork, fwr_dbl_t * rwork, fwi_integer_t * info, size_t jobvl_len_, size_t jobvr_len_)
    void zgegv(char * jobvl, char * jobvr, fwi_integer_t * n, fwc_complex_x16_t * a, fwi_integer_t * lda, fwc_complex_x16_t * b, fwi_integer_t * ldb, fwc_complex_x16_t * alpha, fwc_complex_x16_t * beta, fwc_complex_x16_t * vl, fwi_integer_t * ldvl, fwc_complex_x16_t * vr, fwi_integer_t * ldvr, fwc_complex_x16_t * work, fwi_integer_t * lwork, fwr_dbl_t * rwork, fwi_integer_t * info, size_t jobvl_len_, size_t jobvr_len_)
    void zgehrd(fwi_integer_t * n, fwi_integer_t * ilo, fwi_integer_t * ihi, fwc_complex_x16_t * a, fwi_integer_t * lda, fwc_complex_x16_t * tau, fwc_complex_x16_t * work, fwi_integer_t * lwork, fwi_integer_t * info)
    void zgelss(fwi_integer_t * m, fwi_integer_t * n, fwi_integer_t * nrhs, fwc_complex_x16_t * a, fwi_integer_t * lda, fwc_complex_x16_t * b, fwi_integer_t * ldb, fwr_dbl_t * s, fwr_dbl_t * rcond, fwi_integer_t * rank, fwc_complex_x16_t * work, fwi_integer_t * lwork, fwr_dbl_t * rwork, fwi_integer_t * info)
    void zgeqrf(fwi_integer_t * m, fwi_integer_t * n, fwc_complex_x16_t * a, fwi_integer_t * lda, fwc_complex_x16_t * tau, fwc_complex_x16_t * work, fwi_integer_t * lwork, fwi_integer_t * info)
    void zgerqf(fwi_integer_t * m, fwi_integer_t * n, fwc_complex_x16_t * a, fwi_integer_t * lda, fwc_complex_x16_t * tau, fwc_complex_x16_t * work, fwi_integer_t * lwork, fwi_integer_t * info)
    void zgesdd(char * jobz, fwi_integer_t * m, fwi_integer_t * n, fwc_complex_x16_t * a, fwi_integer_t * lda, fwr_dbl_t * s, fwc_complex_x16_t * u, fwi_integer_t * ldu, fwc_complex_x16_t * vt, fwi_integer_t * ldvt, fwc_complex_x16_t * work, fwi_integer_t * lwork, fwr_dbl_t * rwork, fwi_integer_t * iwork, fwi_integer_t * info, size_t jobz_len_)
    void zgesv(fwi_integer_t * n, fwi_integer_t * nrhs, fwc_complex_x16_t * a, fwi_integer_t * lda, fwi_integer_t * ipiv, fwc_complex_x16_t * b, fwi_integer_t * ldb, fwi_integer_t * info)
    void zgetrf(fwi_integer_t * m, fwi_integer_t * n, fwc_complex_x16_t * a, fwi_integer_t * lda, fwi_integer_t * ipiv, fwi_integer_t * info)
    void zgetri(fwi_integer_t * n, fwc_complex_x16_t * a, fwi_integer_t * lda, fwi_integer_t * ipiv, fwc_complex_x16_t * work, fwi_integer_t * lwork, fwi_integer_t * info)
    void zgetrs(char * trans, fwi_integer_t * n, fwi_integer_t * nrhs, fwc_complex_x16_t * a, fwi_integer_t * lda, fwi_integer_t * ipiv, fwc_complex_x16_t * b, fwi_integer_t * ldb, fwi_integer_t * info, size_t trans_len_)
    void zggev(char * jobvl, char * jobvr, fwi_integer_t * n, fwc_complex_x16_t * a, fwi_integer_t * lda, fwc_complex_x16_t * b, fwi_integer_t * ldb, fwc_complex_x16_t * alpha, fwc_complex_x16_t * beta, fwc_complex_x16_t * vl, fwi_integer_t * ldvl, fwc_complex_x16_t * vr, fwi_integer_t * ldvr, fwc_complex_x16_t * work, fwi_integer_t * lwork, fwr_dbl_t * rwork, fwi_integer_t * info, size_t jobvl_len_, size_t jobvr_len_)
    void zhbevd(char * jobz, char * uplo, fwi_integer_t * n, fwi_integer_t * kd, fwc_complex_x16_t * ab, fwi_integer_t * ldab, fwr_dbl_t * w, fwc_complex_x16_t * z, fwi_integer_t * ldz, fwc_complex_x16_t * work, fwi_integer_t * lwork, fwr_dbl_t * rwork, fwi_integer_t * lrwork, fwi_integer_t * iwork, fwi_integer_t * liwork, fwi_integer_t * info, size_t jobz_len_, size_t uplo_len_)
    void zhbevx(char * jobz, char * range, char * uplo, fwi_integer_t * n, fwi_integer_t * kd, fwc_complex_x16_t * ab, fwi_integer_t * ldab, fwc_complex_x16_t * q, fwi_integer_t * ldq, fwr_dbl_t * vl, fwr_dbl_t * vu, fwi_integer_t * il, fwi_integer_t * iu, fwr_dbl_t * abstol, fwi_integer_t * m, fwr_dbl_t * w, fwc_complex_x16_t * z, fwi_integer_t * ldz, fwc_complex_x16_t * work, fwr_dbl_t * rwork, fwi_integer_t * iwork, fwi_integer_t * ifail, fwi_integer_t * info, size_t jobz_len_, size_t range_len_, size_t uplo_len_)
    void zheev(char * jobz, char * uplo, fwi_integer_t * n, fwc_complex_x16_t * a, fwi_integer_t * lda, fwr_dbl_t * w, fwc_complex_x16_t * work, fwi_integer_t * lwork, fwr_dbl_t * rwork, fwi_integer_t * info, size_t jobz_len_, size_t uplo_len_)
    void zheevr(char * jobz, char * range, char * uplo, fwi_integer_t * n, fwc_complex_x16_t * a, fwi_integer_t * lda, fwr_dbl_t * vl, fwr_dbl_t * vu, fwi_integer_t * il, fwi_integer_t * iu, fwr_dbl_t * abstol, fwi_integer_t * m, fwr_dbl_t * w, fwc_complex_x16_t * z, fwi_integer_t * ldz, fwi_integer_t * isuppz, fwc_complex_x16_t * work, fwi_integer_t * lwork, fwr_dbl_t * rwork, fwi_integer_t * lrwork, fwi_integer_t * iwork, fwi_integer_t * liwork, fwi_integer_t * info, size_t jobz_len_, size_t range_len_, size_t uplo_len_)
    void zhegv(fwi_integer_t * itype, char * jobz, char * uplo, fwi_integer_t * n, fwc_complex_x16_t * a, fwi_integer_t * lda, fwc_complex_x16_t * b, fwi_integer_t * ldb, fwr_dbl_t * w, fwc_complex_x16_t * work, fwi_integer_t * lwork, fwr_dbl_t * rwork, fwi_integer_t * info, size_t jobz_len_, size_t uplo_len_)
    void zhegvd(fwi_integer_t * itype, char * jobz, char * uplo, fwi_integer_t * n, fwc_complex_x16_t * a, fwi_integer_t * lda, fwc_complex_x16_t * b, fwi_integer_t * ldb, fwr_dbl_t * w, fwc_complex_x16_t * work, fwi_integer_t * lwork, fwr_dbl_t * rwork, fwi_integer_t * lrwork, fwi_integer_t * iwork, fwi_integer_t * liwork, fwi_integer_t * info, size_t jobz_len_, size_t uplo_len_)
    void zhegvx(fwi_integer_t * itype, char * jobz, char * range, char * uplo, fwi_integer_t * n, fwc_complex_x16_t * a, fwi_integer_t * lda, fwc_complex_x16_t * b, fwi_integer_t * ldb, fwr_dbl_t * vl, fwr_dbl_t * vu, fwi_integer_t * il, fwi_integer_t * iu, fwr_dbl_t * abstol, fwi_integer_t * m, fwr_dbl_t * w, fwc_complex_x16_t * z, fwi_integer_t * ldz, fwc_complex_x16_t * work, fwi_integer_t * lwork, fwr_dbl_t * rwork, fwi_integer_t * iwork, fwi_integer_t * ifail, fwi_integer_t * info, size_t jobz_len_, size_t range_len_, size_t uplo_len_)
    void zlaswp(fwi_integer_t * n, fwc_complex_x16_t * a, fwi_integer_t * lda, fwi_integer_t * k1, fwi_integer_t * k2, fwi_integer_t * ipiv, fwi_integer_t * incx)
    void zlauum(char * uplo, fwi_integer_t * n, fwc_complex_x16_t * a, fwi_integer_t * lda, fwi_integer_t * info, size_t uplo_len_)
    void zpbsv(char * uplo, fwi_integer_t * n, fwi_integer_t * kd, fwi_integer_t * nrhs, fwc_complex_x16_t * ab, fwi_integer_t * ldab, fwc_complex_x16_t * b, fwi_integer_t * ldb, fwi_integer_t * info, size_t uplo_len_)
    void zpbtrf(char * uplo, fwi_integer_t * n, fwi_integer_t * kd, fwc_complex_x16_t * ab, fwi_integer_t * ldab, fwi_integer_t * info, size_t uplo_len_)
    void zpbtrs(char * uplo, fwi_integer_t * n, fwi_integer_t * kd, fwi_integer_t * nrhs, fwc_complex_x16_t * ab, fwi_integer_t * ldab, fwc_complex_x16_t * b, fwi_integer_t * ldb, fwi_integer_t * info, size_t uplo_len_)
    void zposv(char * uplo, fwi_integer_t * n, fwi_integer_t * nrhs, fwc_complex_x16_t * a, fwi_integer_t * lda, fwc_complex_x16_t * b, fwi_integer_t * ldb, fwi_integer_t * info, size_t uplo_len_)
    void zpotrf(char * uplo, fwi_integer_t * n, fwc_complex_x16_t * a, fwi_integer_t * lda, fwi_integer_t * info, size_t uplo_len_)
    void zpotri(char * uplo, fwi_integer_t * n, fwc_complex_x16_t * a, fwi_integer_t * lda, fwi_integer_t * info, size_t uplo_len_)
    void zpotrs(char * uplo, fwi_integer_t * n, fwi_integer_t * nrhs, fwc_complex_x16_t * a, fwi_integer_t * lda, fwc_complex_x16_t * b, fwi_integer_t * ldb, fwi_integer_t * info, size_t uplo_len_)
    void ztrtri(char * uplo, char * diag, fwi_integer_t * n, fwc_complex_x16_t * a, fwi_integer_t * lda, fwi_integer_t * info, size_t uplo_len_, size_t diag_len_)
    void ztrtrs(char * uplo, char * trans, char * diag, fwi_integer_t * n, fwi_integer_t * nrhs, fwc_complex_x16_t * a, fwi_integer_t * lda, fwc_complex_x16_t * b, fwi_integer_t * ldb, fwi_integer_t * info, size_t uplo_len_, size_t trans_len_, size_t diag_len_)
    void zungqr(fwi_integer_t * m, fwi_integer_t * n, fwi_integer_t * k, fwc_complex_x16_t * a, fwi_integer_t * lda, fwc_complex_x16_t * tau, fwc_complex_x16_t * work, fwi_integer_t * lwork, fwi_integer_t * info)

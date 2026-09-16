.class final Lcom/google/android/gms/internal/ads/zzlg;
.super Lcom/google/android/gms/internal/ads/zztu;
.source "com.google.android.gms:play-services-ads@@23.6.0"


# instance fields
.field private final zzc:Lcom/google/android/gms/internal/ads/zzbp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzlh;Lcom/google/android/gms/internal/ads/zzbq;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zztu;-><init>(Lcom/google/android/gms/internal/ads/zzbq;)V

    .line 2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbp;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzbp;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzlg;->zzc:Lcom/google/android/gms/internal/ads/zzbp;

    return-void
.end method


# virtual methods
.method public final zzd(ILcom/google/android/gms/internal/ads/zzbo;Z)Lcom/google/android/gms/internal/ads/zzbo;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztu;->zzb:Lcom/google/android/gms/internal/ads/zzbq;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbq;->zzd(ILcom/google/android/gms/internal/ads/zzbo;Z)Lcom/google/android/gms/internal/ads/zzbo;

    move-result-object v1

    .line 2
    iget p1, v1, Lcom/google/android/gms/internal/ads/zzbo;->zzc:I

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzlg;->zzc:Lcom/google/android/gms/internal/ads/zzbp;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztu;->zzb:Lcom/google/android/gms/internal/ads/zzbq;

    const-wide/16 v2, 0x0

    .line 3
    invoke-virtual {v0, p1, p3, v2, v3}, Lcom/google/android/gms/internal/ads/zzbq;->zze(ILcom/google/android/gms/internal/ads/zzbp;J)Lcom/google/android/gms/internal/ads/zzbp;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbp;->zzb()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object v2, p2, Lcom/google/android/gms/internal/ads/zzbo;->zza:Ljava/lang/Object;

    iget-object v3, p2, Lcom/google/android/gms/internal/ads/zzbo;->zzb:Ljava/lang/Object;

    iget v4, p2, Lcom/google/android/gms/internal/ads/zzbo;->zzc:I

    iget-wide v5, p2, Lcom/google/android/gms/internal/ads/zzbo;->zzd:J

    iget-wide p1, p2, Lcom/google/android/gms/internal/ads/zzbo;->zze:J

    sget-object v9, Lcom/google/android/gms/internal/ads/zzb;->zza:Lcom/google/android/gms/internal/ads/zzb;

    const/4 v10, 0x1

    const-wide/16 v7, 0x0

    invoke-virtual/range {v1 .. v10}, Lcom/google/android/gms/internal/ads/zzbo;->zzi(Ljava/lang/Object;Ljava/lang/Object;IJJLcom/google/android/gms/internal/ads/zzb;Z)Lcom/google/android/gms/internal/ads/zzbo;

    return-object v1

    :cond_0
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, v1, Lcom/google/android/gms/internal/ads/zzbo;->zzf:Z

    return-object v1
.end method

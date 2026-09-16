.class final Lcom/google/android/gms/internal/ads/zzcbf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@23.6.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Z

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzcbg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcbg;Z)V
    .locals 0

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzcbf;->zza:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcbf;->zzb:Lcom/google/android/gms/internal/ads/zzcbg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcbf;->zza:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "isVisible"

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcbf;->zzb:Lcom/google/android/gms/internal/ads/zzcbg;

    const-string v2, "windowVisibilityChanged"

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzcbg;->zzm(Lcom/google/android/gms/internal/ads/zzcbg;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

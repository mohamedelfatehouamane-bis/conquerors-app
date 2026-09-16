.class final Lcom/google/android/gms/internal/ads/zzcjf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@23.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfbi;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcih;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzhfa;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzhfa;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzhfa;

.field private final zze:Lcom/google/android/gms/internal/ads/zzhfa;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzhfa;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzhfa;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzhfa;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzhfa;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcih;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcjm;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjf;->zza:Lcom/google/android/gms/internal/ads/zzcih;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzhes;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzher;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcjf;->zzb:Lcom/google/android/gms/internal/ads/zzhfa;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcih;->zzag(Lcom/google/android/gms/internal/ads/zzcih;)Lcom/google/android/gms/internal/ads/zzhfa;

    move-result-object p2

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcih;->zzal(Lcom/google/android/gms/internal/ads/zzcih;)Lcom/google/android/gms/internal/ads/zzhfa;

    move-result-object p4

    new-instance v4, Lcom/google/android/gms/internal/ads/zzezi;

    invoke-direct {v4, v1, p2, p4}, Lcom/google/android/gms/internal/ads/zzezi;-><init>(Lcom/google/android/gms/internal/ads/zzhfj;Lcom/google/android/gms/internal/ads/zzhfj;Lcom/google/android/gms/internal/ads/zzhfj;)V

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzcjf;->zzc:Lcom/google/android/gms/internal/ads/zzhfa;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcih;->zzag(Lcom/google/android/gms/internal/ads/zzcih;)Lcom/google/android/gms/internal/ads/zzhfa;

    move-result-object p2

    new-instance p4, Lcom/google/android/gms/internal/ads/zzfas;

    invoke-direct {p4, p2}, Lcom/google/android/gms/internal/ads/zzfas;-><init>(Lcom/google/android/gms/internal/ads/zzhfj;)V

    invoke-static {p4}, Lcom/google/android/gms/internal/ads/zzheq;->zzc(Lcom/google/android/gms/internal/ads/zzhfa;)Lcom/google/android/gms/internal/ads/zzhfa;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/gms/internal/ads/zzcjf;->zzd:Lcom/google/android/gms/internal/ads/zzhfa;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfcg;->zza()Lcom/google/android/gms/internal/ads/zzfcg;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzheq;->zzc(Lcom/google/android/gms/internal/ads/zzhfa;)Lcom/google/android/gms/internal/ads/zzhfa;

    move-result-object v7

    iput-object v7, p0, Lcom/google/android/gms/internal/ads/zzcjf;->zze:Lcom/google/android/gms/internal/ads/zzhfa;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcih;->zzS(Lcom/google/android/gms/internal/ads/zzcih;)Lcom/google/android/gms/internal/ads/zzhfa;

    move-result-object v2

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcih;->zzN(Lcom/google/android/gms/internal/ads/zzcih;)Lcom/google/android/gms/internal/ads/zzhfa;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfcl;->zza()Lcom/google/android/gms/internal/ads/zzfcl;

    move-result-object v6

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfbc;

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzfbc;-><init>(Lcom/google/android/gms/internal/ads/zzhfj;Lcom/google/android/gms/internal/ads/zzhfj;Lcom/google/android/gms/internal/ads/zzhfj;Lcom/google/android/gms/internal/ads/zzhfj;Lcom/google/android/gms/internal/ads/zzhfj;Lcom/google/android/gms/internal/ads/zzhfj;Lcom/google/android/gms/internal/ads/zzhfj;)V

    move-object v4, v5

    move-object v5, v7

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzheq;->zzc(Lcom/google/android/gms/internal/ads/zzhfa;)Lcom/google/android/gms/internal/ads/zzhfa;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzcjf;->zzf:Lcom/google/android/gms/internal/ads/zzhfa;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzfbm;

    invoke-direct {p2, v2, v4, v5}, Lcom/google/android/gms/internal/ads/zzfbm;-><init>(Lcom/google/android/gms/internal/ads/zzhfj;Lcom/google/android/gms/internal/ads/zzhfj;Lcom/google/android/gms/internal/ads/zzhfj;)V

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzheq;->zzc(Lcom/google/android/gms/internal/ads/zzhfa;)Lcom/google/android/gms/internal/ads/zzhfa;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcjf;->zzg:Lcom/google/android/gms/internal/ads/zzhfa;

    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzhes;->zzc(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzher;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcjf;->zzh:Lcom/google/android/gms/internal/ads/zzhfa;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcih;->zzaY(Lcom/google/android/gms/internal/ads/zzcih;)Lcom/google/android/gms/internal/ads/zzhfa;

    move-result-object v6

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcih;->zzaB(Lcom/google/android/gms/internal/ads/zzcih;)Lcom/google/android/gms/internal/ads/zzhfa;

    move-result-object v7

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcih;->zzY(Lcom/google/android/gms/internal/ads/zzcih;)Lcom/google/android/gms/internal/ads/zzhfa;

    move-result-object v8

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfbg;

    move-object v3, v1

    move-object v1, p2

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/zzfbg;-><init>(Lcom/google/android/gms/internal/ads/zzhfj;Lcom/google/android/gms/internal/ads/zzhfj;Lcom/google/android/gms/internal/ads/zzhfj;Lcom/google/android/gms/internal/ads/zzhfj;Lcom/google/android/gms/internal/ads/zzhfj;Lcom/google/android/gms/internal/ads/zzhfj;Lcom/google/android/gms/internal/ads/zzhfj;Lcom/google/android/gms/internal/ads/zzhfj;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzheq;->zzc(Lcom/google/android/gms/internal/ads/zzhfa;)Lcom/google/android/gms/internal/ads/zzhfa;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjf;->zzi:Lcom/google/android/gms/internal/ads/zzhfa;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzfbf;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjf;->zzi:Lcom/google/android/gms/internal/ads/zzhfa;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhfa;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfbf;

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzfbl;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjf;->zzg:Lcom/google/android/gms/internal/ads/zzhfa;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhfa;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfbl;

    return-object v0
.end method

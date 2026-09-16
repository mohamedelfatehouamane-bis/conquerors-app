.class public final Lcom/google/android/gms/internal/games_v2/zzhw;
.super Lcom/google/android/gms/internal/games_v2/zzhx;
.source "com.google.android.gms:play-services-games-v2@@21.0.0"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final synthetic zzc:I

.field private static final zzd:Lcom/google/android/gms/internal/games_v2/zzhw;


# instance fields
.field final zza:Lcom/google/android/gms/internal/games_v2/zzgu;

.field final zzb:Lcom/google/android/gms/internal/games_v2/zzgu;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/games_v2/zzhw;

    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzgt;->zzd()Lcom/google/android/gms/internal/games_v2/zzgt;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzgr;->zzd()Lcom/google/android/gms/internal/games_v2/zzgr;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/games_v2/zzhw;-><init>(Lcom/google/android/gms/internal/games_v2/zzgu;Lcom/google/android/gms/internal/games_v2/zzgu;)V

    sput-object v0, Lcom/google/android/gms/internal/games_v2/zzhw;->zzd:Lcom/google/android/gms/internal/games_v2/zzhw;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/games_v2/zzgu;Lcom/google/android/gms/internal/games_v2/zzgu;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/games_v2/zzhx;-><init>()V

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/games_v2/zzgu;

    iput-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzhw;->zza:Lcom/google/android/gms/internal/games_v2/zzgu;

    .line 2
    move-object v0, p2

    check-cast v0, Lcom/google/android/gms/internal/games_v2/zzgu;

    iput-object p2, p0, Lcom/google/android/gms/internal/games_v2/zzhw;->zzb:Lcom/google/android/gms/internal/games_v2/zzgu;

    .line 3
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/games_v2/zzgu;->zzc(Lcom/google/android/gms/internal/games_v2/zzgu;)I

    move-result v0

    if-gtz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzgr;->zzd()Lcom/google/android/gms/internal/games_v2/zzgr;

    move-result-object v0

    if-eq p1, v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzgt;->zzd()Lcom/google/android/gms/internal/games_v2/zzgt;

    move-result-object v0

    if-eq p2, v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 4
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/games_v2/zzhw;->zze(Lcom/google/android/gms/internal/games_v2/zzgu;Lcom/google/android/gms/internal/games_v2/zzgu;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Invalid range: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static zza()Lcom/google/android/gms/internal/games_v2/zzhw;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/games_v2/zzhw;->zzd:Lcom/google/android/gms/internal/games_v2/zzhw;

    return-object v0
.end method

.method private static zze(Lcom/google/android/gms/internal/games_v2/zzgu;Lcom/google/android/gms/internal/games_v2/zzgu;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/games_v2/zzgu;->zza(Ljava/lang/StringBuilder;)V

    const-string p0, ".."

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/games_v2/zzgu;->zzb(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/games_v2/zzhw;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/games_v2/zzhw;

    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzhw;->zza:Lcom/google/android/gms/internal/games_v2/zzgu;

    .line 2
    iget-object v2, p1, Lcom/google/android/gms/internal/games_v2/zzhw;->zza:Lcom/google/android/gms/internal/games_v2/zzgu;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/games_v2/zzgu;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzhw;->zzb:Lcom/google/android/gms/internal/games_v2/zzgu;

    iget-object p1, p1, Lcom/google/android/gms/internal/games_v2/zzhw;->zzb:Lcom/google/android/gms/internal/games_v2/zzgu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/games_v2/zzgu;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzhw;->zza:Lcom/google/android/gms/internal/games_v2/zzgu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/games_v2/zzgu;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/games_v2/zzhw;->zzb:Lcom/google/android/gms/internal/games_v2/zzgu;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/games_v2/zzgu;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzhw;->zza:Lcom/google/android/gms/internal/games_v2/zzgu;

    iget-object v1, p0, Lcom/google/android/gms/internal/games_v2/zzhw;->zzb:Lcom/google/android/gms/internal/games_v2/zzgu;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/games_v2/zzhw;->zze(Lcom/google/android/gms/internal/games_v2/zzgu;Lcom/google/android/gms/internal/games_v2/zzgu;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzb()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzhw;->zza:Lcom/google/android/gms/internal/games_v2/zzgu;

    iget-object v1, p0, Lcom/google/android/gms/internal/games_v2/zzhw;->zzb:Lcom/google/android/gms/internal/games_v2/zzgu;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/games_v2/zzgu;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/games_v2/zzhw;)Lcom/google/android/gms/internal/games_v2/zzhw;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzhw;->zza:Lcom/google/android/gms/internal/games_v2/zzgu;

    iget-object v1, p1, Lcom/google/android/gms/internal/games_v2/zzhw;->zza:Lcom/google/android/gms/internal/games_v2/zzgu;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/games_v2/zzgu;->zzc(Lcom/google/android/gms/internal/games_v2/zzgu;)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/internal/games_v2/zzhw;->zzb:Lcom/google/android/gms/internal/games_v2/zzgu;

    .line 2
    iget-object v4, p1, Lcom/google/android/gms/internal/games_v2/zzhw;->zzb:Lcom/google/android/gms/internal/games_v2/zzgu;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/games_v2/zzgu;->zzc(Lcom/google/android/gms/internal/games_v2/zzgu;)I

    move-result v5

    if-ltz v2, :cond_1

    if-lez v5, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    if-gtz v2, :cond_3

    if-gez v5, :cond_2

    goto :goto_1

    :cond_2
    return-object p1

    :cond_3
    :goto_1
    if-gez v2, :cond_4

    move-object v0, v1

    :cond_4
    if-gtz v5, :cond_5

    goto :goto_2

    :cond_5
    move-object v3, v4

    .line 3
    :goto_2
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/games_v2/zzgu;->zzc(Lcom/google/android/gms/internal/games_v2/zzgu;)I

    move-result v1

    if-gtz v1, :cond_6

    const/4 v1, 0x1

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    :goto_3
    const-string v2, "intersection is undefined for disconnected ranges %s and %s"

    .line 4
    invoke-static {v1, v2, p0, p1}, Lcom/google/android/gms/internal/games_v2/zzfu;->zza(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance p1, Lcom/google/android/gms/internal/games_v2/zzhw;

    .line 5
    invoke-direct {p1, v0, v3}, Lcom/google/android/gms/internal/games_v2/zzhw;-><init>(Lcom/google/android/gms/internal/games_v2/zzgu;Lcom/google/android/gms/internal/games_v2/zzgu;)V

    return-object p1
.end method

.method public final zzd(Lcom/google/android/gms/internal/games_v2/zzhw;)Lcom/google/android/gms/internal/games_v2/zzhw;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzhw;->zza:Lcom/google/android/gms/internal/games_v2/zzgu;

    iget-object v1, p1, Lcom/google/android/gms/internal/games_v2/zzhw;->zza:Lcom/google/android/gms/internal/games_v2/zzgu;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/games_v2/zzgu;->zzc(Lcom/google/android/gms/internal/games_v2/zzgu;)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/internal/games_v2/zzhw;->zzb:Lcom/google/android/gms/internal/games_v2/zzgu;

    .line 2
    iget-object v4, p1, Lcom/google/android/gms/internal/games_v2/zzhw;->zzb:Lcom/google/android/gms/internal/games_v2/zzgu;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/games_v2/zzgu;->zzc(Lcom/google/android/gms/internal/games_v2/zzgu;)I

    move-result v5

    if-gtz v2, :cond_1

    if-gez v5, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    if-ltz v2, :cond_3

    if-lez v5, :cond_2

    goto :goto_1

    :cond_2
    return-object p1

    :cond_3
    :goto_1
    if-gtz v2, :cond_4

    goto :goto_2

    :cond_4
    move-object v0, v1

    :goto_2
    if-ltz v5, :cond_5

    goto :goto_3

    :cond_5
    move-object v3, v4

    :goto_3
    new-instance p1, Lcom/google/android/gms/internal/games_v2/zzhw;

    .line 3
    invoke-direct {p1, v0, v3}, Lcom/google/android/gms/internal/games_v2/zzhw;-><init>(Lcom/google/android/gms/internal/games_v2/zzgu;Lcom/google/android/gms/internal/games_v2/zzgu;)V

    return-object p1
.end method

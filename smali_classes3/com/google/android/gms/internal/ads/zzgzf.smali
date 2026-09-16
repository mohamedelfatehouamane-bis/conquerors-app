.class final Lcom/google/android/gms/internal/ads/zzgzf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@23.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgzv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzgzv<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final zza:[I

.field private static final zzb:Lsun/misc/Unsafe;


# instance fields
.field private final zzc:[I

.field private final zzd:[Ljava/lang/Object;

.field private final zze:I

.field private final zzf:I

.field private final zzg:Lcom/google/android/gms/internal/ads/zzgzc;

.field private final zzh:Z

.field private final zzi:Z

.field private final zzj:[I

.field private final zzk:I

.field private final zzl:I

.field private final zzm:Lcom/google/android/gms/internal/ads/zzhah;

.field private final zzn:Lcom/google/android/gms/internal/ads/zzgxc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgzf;->zza:[I

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhao;->zzi()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgzf;->zzb:Lsun/misc/Unsafe;

    return-void
.end method

.method private constructor <init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/ads/zzgzc;Z[IIILcom/google/android/gms/internal/ads/zzgzi;Lcom/google/android/gms/internal/ads/zzgyp;Lcom/google/android/gms/internal/ads/zzhah;Lcom/google/android/gms/internal/ads/zzgxc;Lcom/google/android/gms/internal/ads/zzgyx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgzf;->zzc:[I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgzf;->zzd:[Ljava/lang/Object;

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzgzf;->zze:I

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzgzf;->zzf:I

    instance-of p1, p5, Lcom/google/android/gms/internal/ads/zzgxr;

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzgzf;->zzi:Z

    const/4 p1, 0x0

    if-eqz p13, :cond_0

    instance-of p2, p5, Lcom/google/android/gms/internal/ads/zzgxn;

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    :cond_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzgzf;->zzh:Z

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzgzf;->zzj:[I

    iput p8, p0, Lcom/google/android/gms/internal/ads/zzgzf;->zzk:I

    iput p9, p0, Lcom/google/android/gms/internal/ads/zzgzf;->zzl:I

    iput-object p12, p0, Lcom/google/android/gms/internal/ads/zzgzf;->zzm:Lcom/google/android/gms/internal/ads/zzhah;

    iput-object p13, p0, Lcom/google/android/gms/internal/ads/zzgzf;->zzn:Lcom/google/android/gms/internal/ads/zzgxc;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzgzf;->zzg:Lcom/google/android/gms/internal/ads/zzgzc;

    return-void
.end method

.method private final zzA(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzgzf;->zzx(I)Lcom/google/android/gms/internal/ads/zzgzv;

    move-result-object v0

    .line 2
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzgzf;->zzu(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgzf;->zzN(Ljava/lang/Object;I)Z

    move-result p2

    if-nez p2, :cond_0

    .line 4
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgzv;->zze()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    int-to-long v1, v1

    sget-object p2, Lcom/google/android/gms/internal/ads/zzgzf;->zzb:Lsun/misc/Unsafe;

    .line 5
    invoke-virtual {p2, p1, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgzf;->zzQ(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object p1

    .line 7
    :cond_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgzv;->zze()Ljava/lang/Object;

    move-result-object p2

    if-eqz p1, :cond_2

    .line 8
    invoke-interface {v0, p2, p1}, Lcom/google/android/gms/internal/ads/zzgzv;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object p2
.end method

.method private final zzB(Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/zzgzf;->zzx(I)Lcom/google/android/gms/internal/ads/zzgzv;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzgzf;->zzR(Ljava/lang/Object;II)Z

    move-result p2

    if-nez p2, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgzv;->zze()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object p2, Lcom/google/android/gms/internal/ads/zzgzf;->zzb:Lsun/misc/Unsafe;

    .line 4
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/zzgzf;->zzu(I)I

    move-result p3

    const v1, 0xfffff

    and-int/2addr p3, v1

    int-to-long v1, p3

    invoke-virtual {p2, p1, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgzf;->zzQ(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object p1

    .line 6
    :cond_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgzv;->zze()Ljava/lang/Object;

    move-result-object p2

    if-eqz p1, :cond_2

    .line 7
    invoke-interface {v0, p2, p1}, Lcom/google/android/gms/internal/ads/zzgzv;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object p2
.end method

.method private static zzC(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 5

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 2
    :catch_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 3
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 4
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    .line 5
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Field "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found. Known fields are "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static zzD(Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgzf;->zzQ(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 2
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Mutating immutable message: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final zzE(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 5

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzgzf;->zzN(Ljava/lang/Object;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/zzgzf;->zzu(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgzf;->zzb:Lsun/misc/Unsafe;

    int-to-long v2, v0

    .line 3
    invoke-virtual {v1, p2, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 6
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/zzgzf;->zzx(I)Lcom/google/android/gms/internal/ads/zzgzv;

    move-result-object p2

    .line 7
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzgzf;->zzN(Ljava/lang/Object;I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 8
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgzf;->zzQ(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 9
    invoke-virtual {v1, p1, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    .line 10
    :cond_1
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzgzv;->zze()Ljava/lang/Object;

    move-result-object v4

    .line 11
    invoke-interface {p2, v4, v0}, Lcom/google/android/gms/internal/ads/zzgzv;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 12
    invoke-virtual {v1, p1, v2, v3, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 13
    :goto_0
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzgzf;->zzH(Ljava/lang/Object;I)V

    return-void

    .line 14
    :cond_2
    invoke-virtual {v1, p1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p3

    .line 15
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzgzf;->zzQ(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 16
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzgzv;->zze()Ljava/lang/Object;

    move-result-object v4

    .line 17
    invoke-interface {p2, v4, p3}, Lcom/google/android/gms/internal/ads/zzgzv;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 18
    invoke-virtual {v1, p1, v2, v3, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p3, v4

    .line 19
    :cond_3
    invoke-interface {p2, p3, v0}, Lcom/google/android/gms/internal/ads/zzgzv;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgzf;->zzc:[I

    new-instance v0, Ljava/lang/IllegalStateException;

    .line 4
    aget p1, p1, p3

    .line 5
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "Source subfield "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is present but null: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final zzF(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzf;->zzc:[I

    aget v0, v0, p3

    .line 2
    invoke-direct {p0, p2, v0, p3}, Lcom/google/android/gms/internal/ads/zzgzf;->zzR(Ljava/lang/Object;II)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/zzgzf;->zzu(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    sget-object v2, Lcom/google/android/gms/internal/ads/zzgzf;->zzb:Lsun/misc/Unsafe;

    int-to-long v3, v1

    .line 4
    invoke-virtual {v2, p2, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 7
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/zzgzf;->zzx(I)Lcom/google/android/gms/internal/ads/zzgzv;

    move-result-object p2

    .line 8
    invoke-direct {p0, p1, v0, p3}, Lcom/google/android/gms/internal/ads/zzgzf;->zzR(Ljava/lang/Object;II)Z

    move-result v5

    if-nez v5, :cond_2

    .line 9
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgzf;->zzQ(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 10
    invoke-virtual {v2, p1, v3, v4, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    .line 11
    :cond_1
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzgzv;->zze()Ljava/lang/Object;

    move-result-object v5

    .line 12
    invoke-interface {p2, v5, v1}, Lcom/google/android/gms/internal/ads/zzgzv;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 13
    invoke-virtual {v2, p1, v3, v4, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 14
    :goto_0
    invoke-direct {p0, p1, v0, p3}, Lcom/google/android/gms/internal/ads/zzgzf;->zzI(Ljava/lang/Object;II)V

    return-void

    .line 15
    :cond_2
    invoke-virtual {v2, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p3

    .line 16
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzgzf;->zzQ(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 17
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzgzv;->zze()Ljava/lang/Object;

    move-result-object v0

    .line 18
    invoke-interface {p2, v0, p3}, Lcom/google/android/gms/internal/ads/zzgzv;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 19
    invoke-virtual {v2, p1, v3, v4, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p3, v0

    .line 20
    :cond_3
    invoke-interface {p2, p3, v1}, Lcom/google/android/gms/internal/ads/zzgzv;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 4
    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgzf;->zzc:[I

    new-instance v0, Ljava/lang/IllegalStateException;

    .line 5
    aget p1, p1, p3

    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "Source subfield "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is present but null: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final zzG(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/zzgzp;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzgzf;->zzM(I)Z

    move-result v0

    const v1, 0xfffff

    and-int/2addr p2, v1

    int-to-long v1, p2

    if-eqz v0, :cond_0

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzgzp;->zzs()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v1, v2, p2}, Lcom/google/android/gms/internal/ads/zzhao;->zzv(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void

    :cond_0
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzgzf;->zzi:Z

    if-eqz p2, :cond_1

    .line 3
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzgzp;->zzr()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v1, v2, p2}, Lcom/google/android/gms/internal/ads/zzhao;->zzv(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void

    .line 2
    :cond_1
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzgzp;->zzp()Lcom/google/android/gms/internal/ads/zzgwj;

    move-result-object p2

    invoke-static {p1, v1, v2, p2}, Lcom/google/android/gms/internal/ads/zzhao;->zzv(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method private final zzH(Ljava/lang/Object;I)V
    .locals 5

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzgzf;->zzr(I)I

    move-result p2

    const v0, 0xfffff

    and-int/2addr v0, p2

    int-to-long v0, v0

    const-wide/32 v2, 0xfffff

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    ushr-int/lit8 p2, p2, 0x14

    .line 2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzhao;->zzd(Ljava/lang/Object;J)I

    move-result v2

    const/4 v3, 0x1

    shl-int p2, v3, p2

    or-int/2addr p2, v2

    .line 3
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzhao;->zzt(Ljava/lang/Object;JI)V

    return-void
.end method

.method private final zzI(Ljava/lang/Object;II)V
    .locals 2

    .line 1
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/zzgzf;->zzr(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    .line 2
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzhao;->zzt(Ljava/lang/Object;JI)V

    return-void
.end method

.method private final zzJ(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgzf;->zzb:Lsun/misc/Unsafe;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzgzf;->zzu(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v0, p1, v1, v2, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgzf;->zzH(Ljava/lang/Object;I)V

    return-void
.end method

.method private final zzK(Ljava/lang/Object;IILjava/lang/Object;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgzf;->zzb:Lsun/misc/Unsafe;

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/zzgzf;->zzu(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v0, p1, v1, v2, p4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzgzf;->zzI(Ljava/lang/Object;II)V

    return-void
.end method

.method private final zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzgzf;->zzN(Ljava/lang/Object;I)Z

    move-result p1

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzgzf;->zzN(Ljava/lang/Object;I)Z

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private static zzM(I)Z
    .locals 1

    const/high16 v0, 0x20000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final zzN(Ljava/lang/Object;I)Z
    .locals 9

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzgzf;->zzr(I)I

    move-result v0

    const v1, 0xfffff

    and-int v2, v0, v1

    int-to-long v2, v2

    const-wide/32 v4, 0xfffff

    const/4 v6, 0x0

    const/4 v7, 0x1

    cmp-long v8, v2, v4

    if-nez v8, :cond_14

    .line 2
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzgzf;->zzu(I)I

    move-result p2

    and-int v0, p2, v1

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzgzf;->zzt(I)I

    move-result p2

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    packed-switch p2, :pswitch_data_0

    .line 16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 25
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 3
    :pswitch_0
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzhao;->zzh(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return v7

    :cond_0
    return v6

    .line 4
    :pswitch_1
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzhao;->zzf(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_1

    return v7

    :cond_1
    return v6

    .line 5
    :pswitch_2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzhao;->zzd(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_2

    return v7

    :cond_2
    return v6

    .line 6
    :pswitch_3
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzhao;->zzf(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_3

    return v7

    :cond_3
    return v6

    .line 7
    :pswitch_4
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzhao;->zzd(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_4

    return v7

    :cond_4
    return v6

    .line 8
    :pswitch_5
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzhao;->zzd(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_5

    return v7

    :cond_5
    return v6

    .line 9
    :pswitch_6
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzhao;->zzd(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_6

    return v7

    :cond_6
    return v6

    .line 10
    :pswitch_7
    sget-object p2, Lcom/google/android/gms/internal/ads/zzgwj;->zzb:Lcom/google/android/gms/internal/ads/zzgwj;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzhao;->zzh(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzgwj;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v7

    :cond_7
    return v6

    .line 11
    :pswitch_8
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzhao;->zzh(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_8

    return v7

    :cond_8
    return v6

    .line 12
    :pswitch_9
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzhao;->zzh(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 13
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_a

    .line 14
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    return v7

    :cond_9
    return v6

    :cond_a
    instance-of p2, p1, Lcom/google/android/gms/internal/ads/zzgwj;

    if-eqz p2, :cond_c

    .line 15
    sget-object p2, Lcom/google/android/gms/internal/ads/zzgwj;->zzb:Lcom/google/android/gms/internal/ads/zzgwj;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzgwj;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    return v7

    :cond_b
    return v6

    .line 26
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 16
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 17
    :pswitch_a
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzhao;->zzz(Ljava/lang/Object;J)Z

    move-result p1

    return p1

    .line 18
    :pswitch_b
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzhao;->zzd(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_d

    return v7

    :cond_d
    return v6

    .line 19
    :pswitch_c
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzhao;->zzf(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_e

    return v7

    :cond_e
    return v6

    .line 20
    :pswitch_d
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzhao;->zzd(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_f

    return v7

    :cond_f
    return v6

    .line 21
    :pswitch_e
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzhao;->zzf(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_10

    return v7

    :cond_10
    return v6

    .line 22
    :pswitch_f
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzhao;->zzf(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_11

    return v7

    :cond_11
    return v6

    .line 23
    :pswitch_10
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzhao;->zzc(Ljava/lang/Object;J)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    if-eqz p1, :cond_12

    return v7

    :cond_12
    return v6

    .line 24
    :pswitch_11
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzhao;->zzb(Ljava/lang/Object;J)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_13

    return v7

    :cond_13
    return v6

    :cond_14
    ushr-int/lit8 p2, v0, 0x14

    shl-int p2, v7, p2

    .line 26
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzhao;->zzd(Ljava/lang/Object;J)I

    move-result p1

    and-int/2addr p1, p2

    if-eqz p1, :cond_15

    return v7

    :cond_15
    return v6

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final zzO(Ljava/lang/Object;IIII)Z
    .locals 1

    const v0, 0xfffff

    if-ne p3, v0, :cond_0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgzf;->zzN(Ljava/lang/Object;I)Z

    move-result p1

    return p1

    :cond_0
    and-int p1, p4, p5

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private static zzP(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/zzgzv;)Z
    .locals 2

    const v0, 0xfffff

    and-int/2addr p1, v0

    int-to-long v0, p1

    .line 1
    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzhao;->zzh(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    .line 2
    invoke-interface {p2, p0}, Lcom/google/android/gms/internal/ads/zzgzv;->zzl(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static zzQ(Ljava/lang/Object;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1
    :cond_0
    instance-of v0, p0, Lcom/google/android/gms/internal/ads/zzgxr;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/google/android/gms/internal/ads/zzgxr;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgxr;->zzcd()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private final zzR(Ljava/lang/Object;II)Z
    .locals 2

    .line 1
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/zzgzf;->zzr(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    .line 2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzhao;->zzd(Ljava/lang/Object;J)I

    move-result p1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private static zzS(Ljava/lang/Object;J)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhao;->zzh(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final zzT(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzhaw;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Ljava/lang/String;

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/ads/zzhaw;->zzG(ILjava/lang/String;)V

    return-void

    .line 3
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgwj;

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/ads/zzhaw;->zzd(ILcom/google/android/gms/internal/ads/zzgwj;)V

    return-void
.end method

.method static zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhai;
    .locals 2

    .line 1
    check-cast p0, Lcom/google/android/gms/internal/ads/zzgxr;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgxr;->zzt:Lcom/google/android/gms/internal/ads/zzhai;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhai;->zzc()Lcom/google/android/gms/internal/ads/zzhai;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhai;->zzf()Lcom/google/android/gms/internal/ads/zzhai;

    move-result-object v0

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgxr;->zzt:Lcom/google/android/gms/internal/ads/zzhai;

    :cond_0
    return-object v0
.end method

.method static zzm(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgyz;Lcom/google/android/gms/internal/ads/zzgzi;Lcom/google/android/gms/internal/ads/zzgyp;Lcom/google/android/gms/internal/ads/zzhah;Lcom/google/android/gms/internal/ads/zzgxc;Lcom/google/android/gms/internal/ads/zzgyx;)Lcom/google/android/gms/internal/ads/zzgzf;
    .locals 32

    move-object/from16 v0, p1

    .line 1
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzgzo;

    if-eqz v1, :cond_37

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgzo;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgzo;->zzd()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    .line 4
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const v5, 0xd800

    if-lt v4, v5, :cond_0

    const/4 v4, 0x1

    :goto_0
    add-int/lit8 v7, v4, 0x1

    .line 5
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_1

    move v4, v7

    goto :goto_0

    :cond_0
    const/4 v7, 0x1

    :cond_1
    add-int/lit8 v4, v7, 0x1

    .line 6
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v5, :cond_3

    and-int/lit16 v7, v7, 0x1fff

    const/16 v9, 0xd

    :goto_1
    add-int/lit8 v10, v4, 0x1

    .line 7
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_2

    and-int/lit16 v4, v4, 0x1fff

    shl-int/2addr v4, v9

    or-int/2addr v7, v4

    add-int/lit8 v9, v9, 0xd

    move v4, v10

    goto :goto_1

    :cond_2
    shl-int/2addr v4, v9

    or-int/2addr v7, v4

    move v4, v10

    :cond_3
    if-nez v7, :cond_4

    sget-object v7, Lcom/google/android/gms/internal/ads/zzgzf;->zza:[I

    move-object/from16 v16, v7

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v17, 0x0

    goto/16 :goto_a

    :cond_4
    add-int/lit8 v7, v4, 0x1

    .line 8
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_6

    and-int/lit16 v4, v4, 0x1fff

    const/16 v9, 0xd

    :goto_2
    add-int/lit8 v10, v7, 0x1

    .line 9
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v5, :cond_5

    and-int/lit16 v7, v7, 0x1fff

    shl-int/2addr v7, v9

    or-int/2addr v4, v7

    add-int/lit8 v9, v9, 0xd

    move v7, v10

    goto :goto_2

    :cond_5
    shl-int/2addr v7, v9

    or-int/2addr v4, v7

    move v7, v10

    :cond_6
    add-int/lit8 v9, v7, 0x1

    .line 10
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v5, :cond_8

    and-int/lit16 v7, v7, 0x1fff

    const/16 v10, 0xd

    :goto_3
    add-int/lit8 v11, v9, 0x1

    .line 11
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v5, :cond_7

    and-int/lit16 v9, v9, 0x1fff

    shl-int/2addr v9, v10

    or-int/2addr v7, v9

    add-int/lit8 v10, v10, 0xd

    move v9, v11

    goto :goto_3

    :cond_7
    shl-int/2addr v9, v10

    or-int/2addr v7, v9

    move v9, v11

    :cond_8
    add-int/lit8 v10, v9, 0x1

    .line 12
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v5, :cond_a

    and-int/lit16 v9, v9, 0x1fff

    const/16 v11, 0xd

    :goto_4
    add-int/lit8 v12, v10, 0x1

    .line 13
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v5, :cond_9

    and-int/lit16 v10, v10, 0x1fff

    shl-int/2addr v10, v11

    or-int/2addr v9, v10

    add-int/lit8 v11, v11, 0xd

    move v10, v12

    goto :goto_4

    :cond_9
    shl-int/2addr v10, v11

    or-int/2addr v9, v10

    move v10, v12

    :cond_a
    add-int/lit8 v11, v10, 0x1

    .line 14
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v5, :cond_c

    and-int/lit16 v10, v10, 0x1fff

    const/16 v12, 0xd

    :goto_5
    add-int/lit8 v13, v11, 0x1

    .line 15
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v5, :cond_b

    and-int/lit16 v11, v11, 0x1fff

    shl-int/2addr v11, v12

    or-int/2addr v10, v11

    add-int/lit8 v12, v12, 0xd

    move v11, v13

    goto :goto_5

    :cond_b
    shl-int/2addr v11, v12

    or-int/2addr v10, v11

    move v11, v13

    :cond_c
    add-int/lit8 v12, v11, 0x1

    .line 16
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v5, :cond_e

    and-int/lit16 v11, v11, 0x1fff

    const/16 v13, 0xd

    :goto_6
    add-int/lit8 v14, v12, 0x1

    .line 17
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v5, :cond_d

    and-int/lit16 v12, v12, 0x1fff

    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    add-int/lit8 v13, v13, 0xd

    move v12, v14

    goto :goto_6

    :cond_d
    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    move v12, v14

    :cond_e
    add-int/lit8 v13, v12, 0x1

    .line 18
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v5, :cond_10

    and-int/lit16 v12, v12, 0x1fff

    const/16 v14, 0xd

    :goto_7
    add-int/lit8 v15, v13, 0x1

    .line 19
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v5, :cond_f

    and-int/lit16 v13, v13, 0x1fff

    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    add-int/lit8 v14, v14, 0xd

    move v13, v15

    goto :goto_7

    :cond_f
    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    move v13, v15

    :cond_10
    add-int/lit8 v14, v13, 0x1

    .line 20
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v5, :cond_12

    and-int/lit16 v13, v13, 0x1fff

    const/16 v15, 0xd

    :goto_8
    add-int/lit8 v16, v14, 0x1

    .line 21
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v5, :cond_11

    and-int/lit16 v14, v14, 0x1fff

    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    add-int/lit8 v15, v15, 0xd

    move/from16 v14, v16

    goto :goto_8

    :cond_11
    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    move/from16 v14, v16

    :cond_12
    add-int/lit8 v15, v14, 0x1

    .line 22
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v5, :cond_14

    and-int/lit16 v14, v14, 0x1fff

    const/16 v16, 0xd

    :goto_9
    add-int/lit8 v17, v15, 0x1

    .line 23
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v5, :cond_13

    and-int/lit16 v15, v15, 0x1fff

    shl-int v15, v15, v16

    or-int/2addr v14, v15

    add-int/lit8 v16, v16, 0xd

    move/from16 v15, v17

    goto :goto_9

    :cond_13
    shl-int v15, v15, v16

    or-int/2addr v14, v15

    move/from16 v15, v17

    :cond_14
    add-int v16, v14, v12

    add-int v13, v16, v13

    add-int v16, v4, v4

    add-int v16, v16, v7

    .line 24
    new-array v7, v13, [I

    move v13, v12

    move v12, v9

    move v9, v13

    move v13, v10

    move/from16 v17, v14

    move/from16 v10, v16

    move-object/from16 v16, v7

    move v7, v4

    move v4, v15

    .line 7
    :goto_a
    sget-object v14, Lcom/google/android/gms/internal/ads/zzgzf;->zzb:Lsun/misc/Unsafe;

    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgzo;->zze()[Ljava/lang/Object;

    move-result-object v15

    .line 26
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgzo;->zza()Lcom/google/android/gms/internal/ads/zzgzc;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    add-int v18, v17, v9

    add-int v9, v11, v11

    mul-int/lit8 v11, v11, 0x3

    .line 27
    new-array v11, v11, [I

    .line 28
    new-array v9, v9, [Ljava/lang/Object;

    move/from16 v21, v17

    move/from16 v22, v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    :goto_b
    if-ge v4, v2, :cond_36

    add-int/lit8 v23, v4, 0x1

    .line 29
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_16

    and-int/lit16 v4, v4, 0x1fff

    move/from16 v8, v23

    const/16 v23, 0xd

    :goto_c
    add-int/lit8 v24, v8, 0x1

    .line 30
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v5, :cond_15

    and-int/lit16 v8, v8, 0x1fff

    shl-int v8, v8, v23

    or-int/2addr v4, v8

    add-int/lit8 v23, v23, 0xd

    move/from16 v8, v24

    goto :goto_c

    :cond_15
    shl-int v8, v8, v23

    or-int/2addr v4, v8

    move/from16 v8, v24

    goto :goto_d

    :cond_16
    move/from16 v8, v23

    :goto_d
    add-int/lit8 v23, v8, 0x1

    .line 31
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v5, :cond_18

    and-int/lit16 v8, v8, 0x1fff

    move/from16 v6, v23

    const/16 v23, 0xd

    :goto_e
    add-int/lit8 v25, v6, 0x1

    .line 32
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v5, :cond_17

    and-int/lit16 v6, v6, 0x1fff

    shl-int v6, v6, v23

    or-int/2addr v8, v6

    add-int/lit8 v23, v23, 0xd

    move/from16 v6, v25

    goto :goto_e

    :cond_17
    shl-int v6, v6, v23

    or-int/2addr v8, v6

    move/from16 v6, v25

    goto :goto_f

    :cond_18
    move/from16 v6, v23

    :goto_f
    and-int/lit16 v5, v8, 0x400

    if-eqz v5, :cond_19

    add-int/lit8 v5, v19, 0x1

    .line 33
    aput v20, v16, v19

    move/from16 v19, v5

    :cond_19
    and-int/lit16 v5, v8, 0xff

    move-object/from16 v25, v0

    and-int/lit16 v0, v8, 0x800

    move/from16 v26, v0

    const/16 v0, 0x33

    if-lt v5, v0, :cond_23

    add-int/lit8 v0, v6, 0x1

    .line 34
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move/from16 v27, v0

    const v0, 0xd800

    if-lt v6, v0, :cond_1b

    and-int/lit16 v6, v6, 0x1fff

    move/from16 v30, v27

    move/from16 v27, v6

    move/from16 v6, v30

    const/16 v30, 0xd

    :goto_10
    add-int/lit8 v31, v6, 0x1

    .line 35
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v0, :cond_1a

    and-int/lit16 v0, v6, 0x1fff

    shl-int v0, v0, v30

    or-int v27, v27, v0

    add-int/lit8 v30, v30, 0xd

    move/from16 v6, v31

    const v0, 0xd800

    goto :goto_10

    :cond_1a
    shl-int v0, v6, v30

    or-int v6, v27, v0

    move/from16 v0, v31

    goto :goto_11

    :cond_1b
    move/from16 v0, v27

    :goto_11
    move/from16 v27, v0

    add-int/lit8 v0, v5, -0x33

    move/from16 v30, v2

    const/16 v2, 0x9

    if-eq v0, v2, :cond_1f

    const/16 v2, 0x11

    if-ne v0, v2, :cond_1c

    goto :goto_13

    :cond_1c
    const/16 v2, 0xc

    if-ne v0, v2, :cond_20

    .line 37
    invoke-virtual/range {v25 .. v25}, Lcom/google/android/gms/internal/ads/zzgzo;->zzc()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1e

    if-eqz v26, :cond_1d

    goto :goto_12

    :cond_1d
    const/4 v0, 0x0

    goto :goto_15

    :cond_1e
    :goto_12
    add-int/lit8 v0, v10, 0x1

    div-int/lit8 v24, v20, 0x3

    add-int v24, v24, v24

    add-int/lit8 v24, v24, 0x1

    .line 38
    aget-object v10, v15, v10

    aput-object v10, v9, v24

    goto :goto_14

    :cond_1f
    :goto_13
    const/4 v2, 0x1

    add-int/lit8 v0, v10, 0x1

    .line 35
    div-int/lit8 v24, v20, 0x3

    add-int v24, v24, v24

    add-int/lit8 v28, v24, 0x1

    .line 36
    aget-object v2, v15, v10

    aput-object v2, v9, v28

    :goto_14
    move v10, v0

    :cond_20
    move/from16 v0, v26

    :goto_15
    add-int/2addr v6, v6

    .line 39
    aget-object v2, v15, v6

    move/from16 v26, v0

    .line 40
    instance-of v0, v2, Ljava/lang/reflect/Field;

    if-eqz v0, :cond_21

    .line 41
    check-cast v2, Ljava/lang/reflect/Field;

    goto :goto_16

    .line 42
    :cond_21
    check-cast v2, Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/zzgzf;->zzC(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 43
    aput-object v2, v15, v6

    :goto_16
    move/from16 v28, v6

    move v0, v7

    .line 44
    invoke-virtual {v14, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v6

    long-to-int v2, v6

    add-int/lit8 v6, v28, 0x1

    .line 45
    aget-object v7, v15, v6

    move/from16 v31, v0

    .line 46
    instance-of v0, v7, Ljava/lang/reflect/Field;

    if-eqz v0, :cond_22

    .line 47
    check-cast v7, Ljava/lang/reflect/Field;

    goto :goto_17

    .line 48
    :cond_22
    check-cast v7, Ljava/lang/String;

    invoke-static {v3, v7}, Lcom/google/android/gms/internal/ads/zzgzf;->zzC(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 49
    aput-object v7, v15, v6

    .line 50
    :goto_17
    invoke-virtual {v14, v7}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v6

    long-to-int v0, v6

    move-object v7, v1

    move/from16 v6, v27

    const v23, 0xd800

    const/16 v28, 0x0

    move v1, v0

    goto/16 :goto_23

    :cond_23
    move/from16 v30, v2

    move/from16 v31, v7

    add-int/lit8 v0, v10, 0x1

    .line 51
    aget-object v2, v15, v10

    check-cast v2, Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/zzgzf;->zzC(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/16 v7, 0x9

    if-eq v5, v7, :cond_2d

    const/16 v7, 0x11

    if-ne v5, v7, :cond_24

    goto/16 :goto_1c

    :cond_24
    const/16 v7, 0x1b

    if-eq v5, v7, :cond_2c

    const/16 v7, 0x31

    if-ne v5, v7, :cond_25

    add-int/lit8 v10, v10, 0x2

    move/from16 v28, v0

    const/4 v0, 0x1

    goto/16 :goto_1a

    :cond_25
    const/16 v7, 0xc

    if-eq v5, v7, :cond_29

    const/16 v7, 0x1e

    if-eq v5, v7, :cond_29

    const/16 v7, 0x2c

    if-ne v5, v7, :cond_26

    goto :goto_18

    :cond_26
    const/16 v7, 0x32

    if-ne v5, v7, :cond_28

    add-int/lit8 v7, v10, 0x2

    add-int/lit8 v28, v21, 0x1

    .line 56
    aput v20, v16, v21

    div-int/lit8 v21, v20, 0x3

    .line 57
    aget-object v0, v15, v0

    add-int v21, v21, v21

    aput-object v0, v9, v21

    if-eqz v26, :cond_27

    add-int/lit8 v21, v21, 0x1

    add-int/lit8 v0, v10, 0x3

    .line 58
    aget-object v7, v15, v7

    aput-object v7, v9, v21

    move v10, v0

    move-object v7, v1

    move/from16 v21, v28

    goto :goto_1e

    :cond_27
    move v10, v7

    move/from16 v21, v28

    const/16 v26, 0x0

    goto :goto_1b

    :cond_28
    move/from16 v28, v0

    const/4 v0, 0x1

    goto :goto_1d

    .line 54
    :cond_29
    :goto_18
    invoke-virtual/range {v25 .. v25}, Lcom/google/android/gms/internal/ads/zzgzo;->zzc()I

    move-result v7

    move/from16 v28, v0

    const/4 v0, 0x1

    if-eq v7, v0, :cond_2b

    if-eqz v26, :cond_2a

    goto :goto_19

    :cond_2a
    move-object v7, v1

    move/from16 v10, v28

    const/16 v26, 0x0

    goto :goto_1e

    :cond_2b
    :goto_19
    add-int/lit8 v10, v10, 0x2

    div-int/lit8 v7, v20, 0x3

    add-int/2addr v7, v7

    add-int/2addr v7, v0

    .line 55
    aget-object v24, v15, v28

    aput-object v24, v9, v7

    goto :goto_1b

    :cond_2c
    move/from16 v28, v0

    const/4 v0, 0x1

    add-int/lit8 v10, v10, 0x2

    .line 66
    :goto_1a
    div-int/lit8 v7, v20, 0x3

    add-int/2addr v7, v7

    add-int/2addr v7, v0

    .line 53
    aget-object v24, v15, v28

    aput-object v24, v9, v7

    :goto_1b
    move-object v7, v1

    goto :goto_1e

    :cond_2d
    :goto_1c
    move/from16 v28, v0

    const/4 v0, 0x1

    .line 51
    div-int/lit8 v7, v20, 0x3

    add-int/2addr v7, v7

    add-int/2addr v7, v0

    .line 52
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v10

    aput-object v10, v9, v7

    :goto_1d
    move-object v7, v1

    move/from16 v10, v28

    .line 59
    :goto_1e
    invoke-virtual {v14, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    long-to-int v2, v0

    and-int/lit16 v0, v8, 0x1000

    const v1, 0xfffff

    if-eqz v0, :cond_31

    const/16 v0, 0x11

    if-gt v5, v0, :cond_31

    add-int/lit8 v0, v6, 0x1

    .line 60
    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const v6, 0xd800

    if-lt v1, v6, :cond_2f

    and-int/lit16 v1, v1, 0x1fff

    const/16 v23, 0xd

    :goto_1f
    add-int/lit8 v28, v0, 0x1

    .line 61
    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-lt v0, v6, :cond_2e

    and-int/lit16 v0, v0, 0x1fff

    shl-int v0, v0, v23

    or-int/2addr v1, v0

    add-int/lit8 v23, v23, 0xd

    move/from16 v0, v28

    goto :goto_1f

    :cond_2e
    shl-int v0, v0, v23

    or-int/2addr v1, v0

    goto :goto_20

    :cond_2f
    move/from16 v28, v0

    :goto_20
    add-int v0, v31, v31

    div-int/lit8 v23, v1, 0x20

    add-int v0, v0, v23

    .line 62
    aget-object v6, v15, v0

    move/from16 v29, v0

    .line 63
    instance-of v0, v6, Ljava/lang/reflect/Field;

    if-eqz v0, :cond_30

    .line 64
    check-cast v6, Ljava/lang/reflect/Field;

    goto :goto_21

    .line 65
    :cond_30
    check-cast v6, Ljava/lang/String;

    invoke-static {v3, v6}, Lcom/google/android/gms/internal/ads/zzgzf;->zzC(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 66
    aput-object v6, v15, v29

    :goto_21
    move/from16 v29, v1

    .line 67
    invoke-virtual {v14, v6}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    long-to-int v1, v0

    rem-int/lit8 v0, v29, 0x20

    move/from16 v6, v28

    const v23, 0xd800

    move/from16 v28, v0

    goto :goto_22

    :cond_31
    const v23, 0xd800

    const/16 v28, 0x0

    :goto_22
    const/16 v0, 0x12

    if-lt v5, v0, :cond_32

    const/16 v0, 0x31

    if-gt v5, v0, :cond_32

    add-int/lit8 v0, v22, 0x1

    .line 68
    aput v2, v16, v22

    move/from16 v22, v0

    :cond_32
    :goto_23
    move/from16 v0, v26

    add-int/lit8 v26, v20, 0x1

    .line 69
    aput v4, v11, v20

    add-int/lit8 v4, v20, 0x2

    move/from16 v27, v0

    and-int/lit16 v0, v8, 0x200

    if-eqz v0, :cond_33

    const/high16 v0, 0x20000000

    goto :goto_24

    :cond_33
    const/4 v0, 0x0

    :goto_24
    and-int/lit16 v8, v8, 0x100

    if-eqz v8, :cond_34

    const/high16 v8, 0x10000000

    goto :goto_25

    :cond_34
    const/4 v8, 0x0

    :goto_25
    if-eqz v27, :cond_35

    const/high16 v27, -0x80000000

    goto :goto_26

    :cond_35
    const/16 v27, 0x0

    :goto_26
    shl-int/lit8 v5, v5, 0x14

    or-int/2addr v0, v8

    or-int v0, v0, v27

    or-int/2addr v0, v5

    or-int/2addr v0, v2

    .line 70
    aput v0, v11, v26

    add-int/lit8 v20, v20, 0x3

    shl-int/lit8 v0, v28, 0x14

    or-int/2addr v0, v1

    .line 71
    aput v0, v11, v4

    move v4, v6

    move-object v1, v7

    move-object/from16 v0, v25

    move/from16 v2, v30

    move/from16 v7, v31

    const v5, 0xd800

    goto/16 :goto_b

    :cond_36
    move-object/from16 v25, v0

    .line 58
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgzf;

    .line 72
    invoke-virtual/range {v25 .. v25}, Lcom/google/android/gms/internal/ads/zzgzo;->zza()Lcom/google/android/gms/internal/ads/zzgzc;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v19, p2

    move-object/from16 v20, p3

    move-object/from16 v21, p4

    move-object/from16 v22, p5

    move-object/from16 v23, p6

    move-object v10, v11

    move-object v11, v9

    move-object v9, v0

    invoke-direct/range {v9 .. v23}, Lcom/google/android/gms/internal/ads/zzgzf;-><init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/ads/zzgzc;Z[IIILcom/google/android/gms/internal/ads/zzgzi;Lcom/google/android/gms/internal/ads/zzgyp;Lcom/google/android/gms/internal/ads/zzhah;Lcom/google/android/gms/internal/ads/zzgxc;Lcom/google/android/gms/internal/ads/zzgyx;)V

    return-object v9

    .line 73
    :cond_37
    check-cast v0, Lcom/google/android/gms/internal/ads/zzhae;

    const/4 v0, 0x0

    .line 74
    throw v0
.end method

.method private static zzn(Ljava/lang/Object;J)D
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhao;->zzh(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method private static zzo(Ljava/lang/Object;J)F
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhao;->zzh(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method private static zzp(Ljava/lang/Object;J)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhao;->zzh(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private final zzq(I)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgzf;->zze:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgzf;->zzf:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzgzf;->zzs(II)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method private final zzr(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzf;->zzc:[I

    add-int/lit8 p1, p1, 0x2

    aget p1, v0, p1

    return p1
.end method

.method private final zzs(II)I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzf;->zzc:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    const/4 v1, -0x1

    add-int/2addr v0, v1

    :goto_0
    if-gt p2, v0, :cond_2

    add-int v2, v0, p2

    ushr-int/lit8 v2, v2, 0x1

    mul-int/lit8 v3, v2, 0x3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzgzf;->zzc:[I

    aget v4, v4, v3

    if-ne p1, v4, :cond_0

    return v3

    :cond_0
    if-ge p1, v4, :cond_1

    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 p2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private static zzt(I)I
    .locals 0

    ushr-int/lit8 p0, p0, 0x14

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method private final zzu(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzf;->zzc:[I

    add-int/lit8 p1, p1, 0x1

    aget p1, v0, p1

    return p1
.end method

.method private static zzv(Ljava/lang/Object;J)J
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhao;->zzh(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method private final zzw(I)Lcom/google/android/gms/internal/ads/zzgxx;
    .locals 1

    .line 1
    div-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzf;->zzd:[Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgxx;

    return-object p1
.end method

.method private final zzx(I)Lcom/google/android/gms/internal/ads/zzgzv;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzf;->zzd:[Ljava/lang/Object;

    div-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p1

    aget-object v1, v0, p1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzgzv;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v1, p1, 0x1

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgzm;->zza()Lcom/google/android/gms/internal/ads/zzgzm;

    move-result-object v2

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzgzm;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgzv;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgzf;->zzd:[Ljava/lang/Object;

    .line 3
    aput-object v0, v1, p1

    return-object v0
.end method

.method private final zzy(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzhah;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzgzf;->zzc:[I

    aget p4, p4, p2

    .line 2
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzgzf;->zzu(I)I

    move-result p4

    const p5, 0xfffff

    and-int/2addr p4, p5

    int-to-long p4, p4

    .line 3
    invoke-static {p1, p4, p5}, Lcom/google/android/gms/internal/ads/zzhao;->zzh(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzgzf;->zzw(I)Lcom/google/android/gms/internal/ads/zzgxx;

    move-result-object p4

    if-nez p4, :cond_1

    :goto_0
    return-object p3

    .line 5
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgyw;

    .line 6
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzgzf;->zzz(I)Ljava/lang/Object;

    move-result-object p1

    .line 7
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgyv;

    const/4 p1, 0x0

    .line 8
    throw p1
.end method

.method private final zzz(I)Ljava/lang/Object;
    .locals 1

    .line 1
    div-int/lit8 p1, p1, 0x3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzf;->zzd:[Ljava/lang/Object;

    add-int/2addr p1, p1

    aget-object p1, v0, p1

    return-object p1
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)I
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    sget-object v6, Lcom/google/android/gms/internal/ads/zzgzf;->zzb:Lsun/misc/Unsafe;

    const/4 v7, 0x0

    const v8, 0xfffff

    const/4 v2, 0x0

    const v3, 0xfffff

    const/4 v4, 0x0

    const/4 v9, 0x0

    :goto_0
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzgzf;->zzc:[I

    array-length v5, v5

    if-ge v2, v5, :cond_1d

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzgzf;->zzu(I)I

    move-result v5

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgzf;->zzt(I)I

    move-result v10

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzgzf;->zzc:[I

    add-int/lit8 v12, v2, 0x2

    .line 2
    aget v13, v11, v2

    .line 3
    aget v11, v11, v12

    and-int v12, v11, v8

    const/16 v14, 0x11

    const/4 v15, 0x1

    if-gt v10, v14, :cond_2

    if-eq v12, v3, :cond_1

    if-ne v12, v8, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :cond_0
    int-to-long v3, v12

    .line 4
    invoke-virtual {v6, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    :goto_1
    move v4, v3

    move v3, v12

    :cond_1
    ushr-int/lit8 v11, v11, 0x14

    shl-int v11, v15, v11

    goto :goto_2

    :cond_2
    const/4 v11, 0x0

    :goto_2
    and-int/2addr v5, v8

    .line 5
    sget-object v12, Lcom/google/android/gms/internal/ads/zzgxh;->zzJ:Lcom/google/android/gms/internal/ads/zzgxh;

    .line 6
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzgxh;->zza()I

    move-result v12

    if-lt v10, v12, :cond_3

    sget-object v12, Lcom/google/android/gms/internal/ads/zzgxh;->zzW:Lcom/google/android/gms/internal/ads/zzgxh;

    .line 5
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzgxh;->zza()I

    :cond_3
    move v14, v9

    int-to-long v8, v5

    const/16 v16, 0x3f

    packed-switch v10, :pswitch_data_0

    goto/16 :goto_1d

    .line 7
    :pswitch_0
    invoke-direct {v0, v1, v13, v2}, Lcom/google/android/gms/internal/ads/zzgzf;->zzR(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 8
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzgzc;

    .line 9
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzgzf;->zzx(I)Lcom/google/android/gms/internal/ads/zzgzv;

    move-result-object v8

    .line 10
    invoke-static {v13, v5, v8}, Lcom/google/android/gms/internal/ads/zzgww;->zzy(ILcom/google/android/gms/internal/ads/zzgzc;Lcom/google/android/gms/internal/ads/zzgzv;)I

    move-result v5

    goto/16 :goto_17

    .line 11
    :pswitch_1
    invoke-direct {v0, v1, v13, v2}, Lcom/google/android/gms/internal/ads/zzgzf;->zzR(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_1c

    shl-int/lit8 v5, v13, 0x3

    .line 12
    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/ads/zzgzf;->zzv(Ljava/lang/Object;J)J

    move-result-wide v8

    add-long v10, v8, v8

    shr-long v8, v8, v16

    .line 13
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgww;->zzD(I)I

    move-result v5

    xor-long/2addr v8, v10

    .line 14
    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/zzgww;->zzE(J)I

    move-result v8

    goto/16 :goto_4

    .line 15
    :pswitch_2
    invoke-direct {v0, v1, v13, v2}, Lcom/google/android/gms/internal/ads/zzgzf;->zzR(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_1c

    shl-int/lit8 v5, v13, 0x3

    .line 16
    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/ads/zzgzf;->zzp(Ljava/lang/Object;J)I

    move-result v8

    add-int v9, v8, v8

    shr-int/lit8 v8, v8, 0x1f

    .line 17
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgww;->zzD(I)I

    move-result v5

    xor-int/2addr v8, v9

    .line 18
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzgww;->zzD(I)I

    move-result v8

    goto/16 :goto_4

    .line 19
    :pswitch_3
    invoke-direct {v0, v1, v13, v2}, Lcom/google/android/gms/internal/ads/zzgzf;->zzR(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_1c

    shl-int/lit8 v5, v13, 0x3

    .line 20
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgww;->zzD(I)I

    move-result v5

    goto/16 :goto_6

    .line 21
    :pswitch_4
    invoke-direct {v0, v1, v13, v2}, Lcom/google/android/gms/internal/ads/zzgzf;->zzR(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_1c

    shl-int/lit8 v5, v13, 0x3

    .line 22
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgww;->zzD(I)I

    move-result v5

    goto/16 :goto_5

    .line 23
    :pswitch_5
    invoke-direct {v0, v1, v13, v2}, Lcom/google/android/gms/internal/ads/zzgzf;->zzR(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_1c

    shl-int/lit8 v5, v13, 0x3

    .line 24
    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/ads/zzgzf;->zzp(Ljava/lang/Object;J)I

    move-result v8

    int-to-long v8, v8

    .line 25
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgww;->zzD(I)I

    move-result v5

    .line 26
    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/zzgww;->zzE(J)I

    move-result v8

    goto/16 :goto_4

    .line 27
    :pswitch_6
    invoke-direct {v0, v1, v13, v2}, Lcom/google/android/gms/internal/ads/zzgzf;->zzR(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_1c

    shl-int/lit8 v5, v13, 0x3

    .line 28
    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/ads/zzgzf;->zzp(Ljava/lang/Object;J)I

    move-result v8

    .line 29
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgww;->zzD(I)I

    move-result v5

    .line 30
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzgww;->zzD(I)I

    move-result v8

    goto/16 :goto_4

    .line 31
    :pswitch_7
    invoke-direct {v0, v1, v13, v2}, Lcom/google/android/gms/internal/ads/zzgzf;->zzR(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_1c

    shl-int/lit8 v5, v13, 0x3

    .line 32
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/ads/zzgwj;

    .line 33
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgww;->zzD(I)I

    move-result v5

    .line 34
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzgwj;->zzd()I

    move-result v8

    .line 35
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzgww;->zzD(I)I

    move-result v9

    :goto_3
    add-int/2addr v9, v8

    add-int/2addr v5, v9

    goto/16 :goto_17

    .line 36
    :pswitch_8
    invoke-direct {v0, v1, v13, v2}, Lcom/google/android/gms/internal/ads/zzgzf;->zzR(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 37
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 38
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzgzf;->zzx(I)Lcom/google/android/gms/internal/ads/zzgzv;

    move-result-object v8

    invoke-static {v13, v5, v8}, Lcom/google/android/gms/internal/ads/zzgzx;->zzh(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzgzv;)I

    move-result v5

    goto/16 :goto_17

    .line 39
    :pswitch_9
    invoke-direct {v0, v1, v13, v2}, Lcom/google/android/gms/internal/ads/zzgzf;->zzR(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_1c

    shl-int/lit8 v5, v13, 0x3

    .line 40
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    instance-of v9, v8, Lcom/google/android/gms/internal/ads/zzgwj;

    if-eqz v9, :cond_4

    .line 41
    check-cast v8, Lcom/google/android/gms/internal/ads/zzgwj;

    .line 42
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgww;->zzD(I)I

    move-result v5

    .line 43
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzgwj;->zzd()I

    move-result v8

    .line 44
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzgww;->zzD(I)I

    move-result v9

    goto :goto_3

    .line 45
    :cond_4
    check-cast v8, Ljava/lang/String;

    .line 46
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgww;->zzD(I)I

    move-result v5

    .line 47
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzgww;->zzC(Ljava/lang/String;)I

    move-result v8

    goto :goto_4

    .line 48
    :pswitch_a
    invoke-direct {v0, v1, v13, v2}, Lcom/google/android/gms/internal/ads/zzgzf;->zzR(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_1c

    shl-int/lit8 v5, v13, 0x3

    .line 49
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgww;->zzD(I)I

    move-result v5

    add-int/2addr v5, v15

    goto/16 :goto_17

    .line 50
    :pswitch_b
    invoke-direct {v0, v1, v13, v2}, Lcom/google/android/gms/internal/ads/zzgzf;->zzR(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_1c

    shl-int/lit8 v5, v13, 0x3

    .line 51
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgww;->zzD(I)I

    move-result v5

    goto :goto_5

    .line 52
    :pswitch_c
    invoke-direct {v0, v1, v13, v2}, Lcom/google/android/gms/internal/ads/zzgzf;->zzR(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_1c

    shl-int/lit8 v5, v13, 0x3

    .line 53
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgww;->zzD(I)I

    move-result v5

    goto :goto_6

    .line 54
    :pswitch_d
    invoke-direct {v0, v1, v13, v2}, Lcom/google/android/gms/internal/ads/zzgzf;->zzR(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_1c

    shl-int/lit8 v5, v13, 0x3

    .line 55
    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/ads/zzgzf;->zzp(Ljava/lang/Object;J)I

    move-result v8

    int-to-long v8, v8

    .line 56
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgww;->zzD(I)I

    move-result v5

    .line 57
    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/zzgww;->zzE(J)I

    move-result v8

    goto :goto_4

    .line 58
    :pswitch_e
    invoke-direct {v0, v1, v13, v2}, Lcom/google/android/gms/internal/ads/zzgzf;->zzR(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_1c

    shl-int/lit8 v5, v13, 0x3

    .line 59
    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/ads/zzgzf;->zzv(Ljava/lang/Object;J)J

    move-result-wide v8

    .line 60
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgww;->zzD(I)I

    move-result v5

    .line 61
    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/zzgww;->zzE(J)I

    move-result v8

    goto :goto_4

    .line 62
    :pswitch_f
    invoke-direct {v0, v1, v13, v2}, Lcom/google/android/gms/internal/ads/zzgzf;->zzR(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_1c

    shl-int/lit8 v5, v13, 0x3

    .line 63
    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/ads/zzgzf;->zzv(Ljava/lang/Object;J)J

    move-result-wide v8

    .line 64
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgww;->zzD(I)I

    move-result v5

    .line 65
    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/zzgww;->zzE(J)I

    move-result v8

    :goto_4
    add-int/2addr v5, v8

    goto/16 :goto_17

    .line 66
    :pswitch_10
    invoke-direct {v0, v1, v13, v2}, Lcom/google/android/gms/internal/ads/zzgzf;->zzR(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_1c

    shl-int/lit8 v5, v13, 0x3

    .line 67
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgww;->zzD(I)I

    move-result v5

    :goto_5
    add-int/lit8 v5, v5, 0x4

    goto/16 :goto_17

    .line 68
    :pswitch_11
    invoke-direct {v0, v1, v13, v2}, Lcom/google/android/gms/internal/ads/zzgzf;->zzR(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_1c

    shl-int/lit8 v5, v13, 0x3

    .line 69
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgww;->zzD(I)I

    move-result v5

    :goto_6
    add-int/lit8 v5, v5, 0x8

    goto/16 :goto_17

    .line 70
    :pswitch_12
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzgzf;->zzz(I)Ljava/lang/Object;

    move-result-object v8

    .line 71
    check-cast v5, Lcom/google/android/gms/internal/ads/zzgyw;

    .line 72
    check-cast v8, Lcom/google/android/gms/internal/ads/zzgyv;

    .line 73
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzgyw;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1c

    .line 74
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzgyw;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_5

    goto/16 :goto_1d

    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 291
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    const/4 v1, 0x0

    .line 292
    throw v1

    .line 75
    :pswitch_13
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 76
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzgzf;->zzx(I)Lcom/google/android/gms/internal/ads/zzgzv;

    move-result-object v8

    .line 77
    sget v9, Lcom/google/android/gms/internal/ads/zzgzx;->zza:I

    .line 78
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_6

    const/4 v11, 0x0

    goto :goto_8

    :cond_6
    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_7
    if-ge v10, v9, :cond_7

    .line 79
    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/gms/internal/ads/zzgzc;

    invoke-static {v13, v15, v8}, Lcom/google/android/gms/internal/ads/zzgww;->zzy(ILcom/google/android/gms/internal/ads/zzgzc;Lcom/google/android/gms/internal/ads/zzgzv;)I

    move-result v15

    add-int/2addr v11, v15

    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    :cond_7
    :goto_8
    add-int v9, v14, v11

    goto/16 :goto_1e

    .line 80
    :pswitch_14
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 81
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgzx;->zzj(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1c

    shl-int/lit8 v8, v13, 0x3

    .line 82
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzgww;->zzD(I)I

    move-result v8

    .line 83
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgww;->zzD(I)I

    move-result v9

    goto/16 :goto_9

    .line 84
    :pswitch_15
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 85
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgzx;->zzi(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1c

    shl-int/lit8 v8, v13, 0x3

    .line 86
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzgww;->zzD(I)I

    move-result v8

    .line 87
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgww;->zzD(I)I

    move-result v9

    goto/16 :goto_9

    .line 88
    :pswitch_16
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 89
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgzx;->zze(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1c

    shl-int/lit8 v8, v13, 0x3

    .line 90
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzgww;->zzD(I)I

    move-result v8

    .line 91
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgww;->zzD(I)I

    move-result v9

    goto/16 :goto_9

    .line 92
    :pswitch_17
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 93
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgzx;->zzc(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1c

    shl-int/lit8 v8, v13, 0x3

    .line 94
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzgww;->zzD(I)I

    move-result v8

    .line 95
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgww;->zzD(I)I

    move-result v9

    goto/16 :goto_9

    .line 96
    :pswitch_18
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 97
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgzx;->zza(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1c

    shl-int/lit8 v8, v13, 0x3

    .line 98
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzgww;->zzD(I)I

    move-result v8

    .line 99
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgww;->zzD(I)I

    move-result v9

    goto/16 :goto_9

    .line 100
    :pswitch_19
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 101
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgzx;->zzk(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1c

    shl-int/lit8 v8, v13, 0x3

    .line 102
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzgww;->zzD(I)I

    move-result v8

    .line 103
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgww;->zzD(I)I

    move-result v9

    goto/16 :goto_9

    .line 104
    :pswitch_1a
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 105
    sget v8, Lcom/google/android/gms/internal/ads/zzgzx;->zza:I

    .line 106
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1c

    shl-int/lit8 v8, v13, 0x3

    .line 107
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzgww;->zzD(I)I

    move-result v8

    .line 108
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgww;->zzD(I)I

    move-result v9

    goto/16 :goto_9

    .line 109
    :pswitch_1b
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 110
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgzx;->zzc(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1c

    shl-int/lit8 v8, v13, 0x3

    .line 111
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzgww;->zzD(I)I

    move-result v8

    .line 112
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgww;->zzD(I)I

    move-result v9

    goto/16 :goto_9

    .line 113
    :pswitch_1c
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 114
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgzx;->zze(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1c

    shl-int/lit8 v8, v13, 0x3

    .line 115
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzgww;->zzD(I)I

    move-result v8

    .line 116
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgww;->zzD(I)I

    move-result v9

    goto/16 :goto_9

    .line 117
    :pswitch_1d
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 118
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgzx;->zzf(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1c

    shl-int/lit8 v8, v13, 0x3

    .line 119
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzgww;->zzD(I)I

    move-result v8

    .line 120
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgww;->zzD(I)I

    move-result v9

    goto :goto_9

    .line 121
    :pswitch_1e
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 122
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgzx;->zzl(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1c

    shl-int/lit8 v8, v13, 0x3

    .line 123
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzgww;->zzD(I)I

    move-result v8

    .line 124
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgww;->zzD(I)I

    move-result v9

    goto :goto_9

    .line 125
    :pswitch_1f
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 126
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgzx;->zzg(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1c

    shl-int/lit8 v8, v13, 0x3

    .line 127
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzgww;->zzD(I)I

    move-result v8

    .line 128
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgww;->zzD(I)I

    move-result v9

    goto :goto_9

    .line 129
    :pswitch_20
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 130
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgzx;->zzc(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1c

    shl-int/lit8 v8, v13, 0x3

    .line 131
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzgww;->zzD(I)I

    move-result v8

    .line 132
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgww;->zzD(I)I

    move-result v9

    goto :goto_9

    .line 133
    :pswitch_21
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 134
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgzx;->zze(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1c

    shl-int/lit8 v8, v13, 0x3

    .line 135
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzgww;->zzD(I)I

    move-result v8

    .line 136
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgww;->zzD(I)I

    move-result v9

    :goto_9
    add-int/2addr v8, v9

    add-int/2addr v8, v5

    :cond_8
    :goto_a
    add-int v9, v14, v8

    goto/16 :goto_1e

    .line 137
    :pswitch_22
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 138
    sget v8, Lcom/google/android/gms/internal/ads/zzgzx;->zza:I

    .line 139
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_9

    :goto_b
    const/4 v5, 0x0

    goto/16 :goto_17

    :cond_9
    shl-int/lit8 v9, v13, 0x3

    .line 140
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgzx;->zzj(Ljava/util/List;)I

    move-result v5

    .line 141
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzgww;->zzD(I)I

    move-result v9

    :goto_c
    mul-int v8, v8, v9

    goto/16 :goto_4

    .line 142
    :pswitch_23
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 143
    sget v8, Lcom/google/android/gms/internal/ads/zzgzx;->zza:I

    .line 144
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_a

    goto :goto_b

    :cond_a
    shl-int/lit8 v9, v13, 0x3

    .line 145
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgzx;->zzi(Ljava/util/List;)I

    move-result v5

    .line 146
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzgww;->zzD(I)I

    move-result v9

    goto :goto_c

    .line 147
    :pswitch_24
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 148
    invoke-static {v13, v5, v7}, Lcom/google/android/gms/internal/ads/zzgzx;->zzd(ILjava/util/List;Z)I

    move-result v5

    goto/16 :goto_17

    .line 149
    :pswitch_25
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 150
    invoke-static {v13, v5, v7}, Lcom/google/android/gms/internal/ads/zzgzx;->zzb(ILjava/util/List;Z)I

    move-result v5

    goto/16 :goto_17

    .line 151
    :pswitch_26
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 152
    sget v8, Lcom/google/android/gms/internal/ads/zzgzx;->zza:I

    .line 153
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_b

    goto :goto_b

    :cond_b
    shl-int/lit8 v9, v13, 0x3

    .line 154
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgzx;->zza(Ljava/util/List;)I

    move-result v5

    .line 155
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzgww;->zzD(I)I

    move-result v9

    goto :goto_c

    .line 156
    :pswitch_27
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 157
    sget v8, Lcom/google/android/gms/internal/ads/zzgzx;->zza:I

    .line 158
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_c

    goto :goto_b

    :cond_c
    shl-int/lit8 v9, v13, 0x3

    .line 159
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgzx;->zzk(Ljava/util/List;)I

    move-result v5

    .line 160
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzgww;->zzD(I)I

    move-result v9

    goto :goto_c

    .line 161
    :pswitch_28
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 162
    sget v8, Lcom/google/android/gms/internal/ads/zzgzx;->zza:I

    .line 163
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_d

    const/4 v8, 0x0

    goto/16 :goto_a

    :cond_d
    shl-int/lit8 v9, v13, 0x3

    .line 164
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzgww;->zzD(I)I

    move-result v9

    mul-int v8, v8, v9

    const/4 v9, 0x0

    .line 165
    :goto_d
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_8

    .line 166
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/ads/zzgwj;

    .line 167
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzgwj;->zzd()I

    move-result v10

    .line 168
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/zzgww;->zzD(I)I

    move-result v11

    add-int/2addr v11, v10

    add-int/2addr v8, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_d

    .line 169
    :pswitch_29
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzgzf;->zzx(I)Lcom/google/android/gms/internal/ads/zzgzv;

    move-result-object v8

    .line 170
    sget v9, Lcom/google/android/gms/internal/ads/zzgzx;->zza:I

    .line 171
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_e

    const/4 v10, 0x0

    goto :goto_10

    :cond_e
    shl-int/lit8 v10, v13, 0x3

    .line 172
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/zzgww;->zzD(I)I

    move-result v10

    mul-int v10, v10, v9

    const/4 v11, 0x0

    :goto_e
    if-ge v11, v9, :cond_10

    .line 173
    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    instance-of v15, v13, Lcom/google/android/gms/internal/ads/zzgyn;

    if-eqz v15, :cond_f

    .line 174
    check-cast v13, Lcom/google/android/gms/internal/ads/zzgyn;

    .line 175
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzgyn;->zza()I

    move-result v13

    .line 176
    invoke-static {v13}, Lcom/google/android/gms/internal/ads/zzgww;->zzD(I)I

    move-result v15

    add-int/2addr v15, v13

    add-int/2addr v10, v15

    goto :goto_f

    .line 177
    :cond_f
    check-cast v13, Lcom/google/android/gms/internal/ads/zzgzc;

    invoke-static {v13, v8}, Lcom/google/android/gms/internal/ads/zzgww;->zzA(Lcom/google/android/gms/internal/ads/zzgzc;Lcom/google/android/gms/internal/ads/zzgzv;)I

    move-result v13

    add-int/2addr v10, v13

    :goto_f
    add-int/lit8 v11, v11, 0x1

    goto :goto_e

    :cond_10
    :goto_10
    add-int v9, v14, v10

    goto/16 :goto_1e

    .line 178
    :pswitch_2a
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget v8, Lcom/google/android/gms/internal/ads/zzgzx;->zza:I

    .line 179
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_11

    goto/16 :goto_15

    :cond_11
    shl-int/lit8 v9, v13, 0x3

    .line 180
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzgww;->zzD(I)I

    move-result v9

    mul-int v9, v9, v8

    instance-of v10, v5, Lcom/google/android/gms/internal/ads/zzgyo;

    if-eqz v10, :cond_13

    .line 186
    check-cast v5, Lcom/google/android/gms/internal/ads/zzgyo;

    const/4 v10, 0x0

    :goto_11
    if-ge v10, v8, :cond_19

    .line 187
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzgyo;->zzc()Ljava/lang/Object;

    move-result-object v11

    instance-of v13, v11, Lcom/google/android/gms/internal/ads/zzgwj;

    if-eqz v13, :cond_12

    .line 188
    check-cast v11, Lcom/google/android/gms/internal/ads/zzgwj;

    .line 189
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzgwj;->zzd()I

    move-result v11

    .line 190
    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zzgww;->zzD(I)I

    move-result v13

    add-int/2addr v13, v11

    add-int/2addr v9, v13

    goto :goto_12

    .line 191
    :cond_12
    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zzgww;->zzC(Ljava/lang/String;)I

    move-result v11

    add-int/2addr v9, v11

    :goto_12
    add-int/lit8 v10, v10, 0x1

    goto :goto_11

    :cond_13
    const/4 v10, 0x0

    :goto_13
    if-ge v10, v8, :cond_19

    .line 181
    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    instance-of v13, v11, Lcom/google/android/gms/internal/ads/zzgwj;

    if-eqz v13, :cond_14

    .line 182
    check-cast v11, Lcom/google/android/gms/internal/ads/zzgwj;

    .line 183
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzgwj;->zzd()I

    move-result v11

    .line 184
    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zzgww;->zzD(I)I

    move-result v13

    add-int/2addr v13, v11

    add-int/2addr v9, v13

    goto :goto_14

    .line 185
    :cond_14
    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zzgww;->zzC(Ljava/lang/String;)I

    move-result v11

    add-int/2addr v9, v11

    :goto_14
    add-int/lit8 v10, v10, 0x1

    goto :goto_13

    .line 192
    :pswitch_2b
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 193
    sget v8, Lcom/google/android/gms/internal/ads/zzgzx;->zza:I

    .line 194
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_15

    goto/16 :goto_b

    :cond_15
    shl-int/lit8 v8, v13, 0x3

    .line 195
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzgww;->zzD(I)I

    move-result v8

    add-int/2addr v8, v15

    mul-int v5, v5, v8

    goto/16 :goto_17

    .line 196
    :pswitch_2c
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 197
    invoke-static {v13, v5, v7}, Lcom/google/android/gms/internal/ads/zzgzx;->zzb(ILjava/util/List;Z)I

    move-result v5

    goto/16 :goto_17

    .line 198
    :pswitch_2d
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 199
    invoke-static {v13, v5, v7}, Lcom/google/android/gms/internal/ads/zzgzx;->zzd(ILjava/util/List;Z)I

    move-result v5

    goto/16 :goto_17

    .line 200
    :pswitch_2e
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 201
    sget v8, Lcom/google/android/gms/internal/ads/zzgzx;->zza:I

    .line 202
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_16

    goto/16 :goto_b

    :cond_16
    shl-int/lit8 v9, v13, 0x3

    .line 203
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgzx;->zzf(Ljava/util/List;)I

    move-result v5

    .line 204
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzgww;->zzD(I)I

    move-result v9

    goto/16 :goto_c

    .line 205
    :pswitch_2f
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 206
    sget v8, Lcom/google/android/gms/internal/ads/zzgzx;->zza:I

    .line 207
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_17

    goto/16 :goto_b

    :cond_17
    shl-int/lit8 v9, v13, 0x3

    .line 208
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgzx;->zzl(Ljava/util/List;)I

    move-result v5

    .line 209
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzgww;->zzD(I)I

    move-result v9

    goto/16 :goto_c

    .line 210
    :pswitch_30
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 211
    sget v8, Lcom/google/android/gms/internal/ads/zzgzx;->zza:I

    .line 212
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_18

    :goto_15
    const/4 v9, 0x0

    goto :goto_16

    :cond_18
    shl-int/lit8 v8, v13, 0x3

    .line 213
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgzx;->zzg(Ljava/util/List;)I

    move-result v9

    .line 214
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    .line 215
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzgww;->zzD(I)I

    move-result v8

    mul-int v5, v5, v8

    add-int/2addr v9, v5

    :cond_19
    :goto_16
    add-int/2addr v9, v14

    goto/16 :goto_1e

    .line 216
    :pswitch_31
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 217
    invoke-static {v13, v5, v7}, Lcom/google/android/gms/internal/ads/zzgzx;->zzb(ILjava/util/List;Z)I

    move-result v5

    goto :goto_17

    .line 218
    :pswitch_32
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 219
    invoke-static {v13, v5, v7}, Lcom/google/android/gms/internal/ads/zzgzx;->zzd(ILjava/util/List;Z)I

    move-result v5

    :goto_17
    add-int v9, v14, v5

    goto/16 :goto_1e

    :pswitch_33
    move v5, v11

    .line 220
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgzf;->zzO(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 221
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzgzc;

    .line 222
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzgzf;->zzx(I)Lcom/google/android/gms/internal/ads/zzgzv;

    move-result-object v8

    .line 223
    invoke-static {v13, v5, v8}, Lcom/google/android/gms/internal/ads/zzgww;->zzy(ILcom/google/android/gms/internal/ads/zzgzc;Lcom/google/android/gms/internal/ads/zzgzv;)I

    move-result v5

    goto :goto_17

    :pswitch_34
    move v5, v11

    .line 224
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgzf;->zzO(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 225
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    add-long v10, v8, v8

    shr-long v8, v8, v16

    .line 226
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgww;->zzD(I)I

    move-result v0

    xor-long/2addr v8, v10

    .line 227
    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/zzgww;->zzE(J)I

    move-result v5

    goto/16 :goto_1a

    :pswitch_35
    move v5, v11

    .line 228
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgzf;->zzO(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 229
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    add-int v8, v5, v5

    shr-int/lit8 v5, v5, 0x1f

    .line 230
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgww;->zzD(I)I

    move-result v0

    xor-int/2addr v5, v8

    .line 231
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgww;->zzD(I)I

    move-result v5

    goto/16 :goto_1a

    :pswitch_36
    move v5, v11

    .line 232
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgzf;->zzO(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 233
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgww;->zzD(I)I

    move-result v0

    goto/16 :goto_19

    :pswitch_37
    move v5, v11

    .line 234
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgzf;->zzO(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 235
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgww;->zzD(I)I

    move-result v0

    goto/16 :goto_1b

    :pswitch_38
    move v5, v11

    .line 236
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgzf;->zzO(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 237
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    int-to-long v8, v5

    .line 238
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgww;->zzD(I)I

    move-result v0

    .line 239
    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/zzgww;->zzE(J)I

    move-result v5

    goto/16 :goto_1a

    :pswitch_39
    move v5, v11

    .line 240
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgzf;->zzO(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 241
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    .line 242
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgww;->zzD(I)I

    move-result v0

    .line 243
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgww;->zzD(I)I

    move-result v5

    goto/16 :goto_1a

    :pswitch_3a
    move v5, v11

    .line 244
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgzf;->zzO(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 245
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzgwj;

    .line 246
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgww;->zzD(I)I

    move-result v0

    .line 247
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzgwj;->zzd()I

    move-result v5

    .line 248
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgww;->zzD(I)I

    move-result v8

    :goto_18
    add-int/2addr v8, v5

    add-int/2addr v0, v8

    goto/16 :goto_1c

    :pswitch_3b
    move v5, v11

    .line 249
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgzf;->zzO(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 250
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 251
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzgzf;->zzx(I)Lcom/google/android/gms/internal/ads/zzgzv;

    move-result-object v8

    invoke-static {v13, v5, v8}, Lcom/google/android/gms/internal/ads/zzgzx;->zzh(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzgzv;)I

    move-result v5

    goto/16 :goto_17

    :pswitch_3c
    move v5, v11

    .line 252
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgzf;->zzO(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 253
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    instance-of v8, v5, Lcom/google/android/gms/internal/ads/zzgwj;

    if-eqz v8, :cond_1a

    .line 254
    check-cast v5, Lcom/google/android/gms/internal/ads/zzgwj;

    .line 255
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgww;->zzD(I)I

    move-result v0

    .line 256
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzgwj;->zzd()I

    move-result v5

    .line 257
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgww;->zzD(I)I

    move-result v8

    goto :goto_18

    .line 258
    :cond_1a
    check-cast v5, Ljava/lang/String;

    .line 259
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgww;->zzD(I)I

    move-result v0

    .line 260
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgww;->zzC(Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_1a

    :pswitch_3d
    move v5, v11

    .line 261
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgzf;->zzO(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 262
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgww;->zzD(I)I

    move-result v0

    add-int/2addr v0, v15

    goto/16 :goto_1c

    :pswitch_3e
    move v5, v11

    .line 263
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgzf;->zzO(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 264
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgww;->zzD(I)I

    move-result v0

    goto :goto_1b

    :pswitch_3f
    move v5, v11

    .line 265
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgzf;->zzO(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 266
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgww;->zzD(I)I

    move-result v0

    :goto_19
    add-int/lit8 v0, v0, 0x8

    goto :goto_1c

    :pswitch_40
    move v5, v11

    .line 267
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgzf;->zzO(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 268
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    int-to-long v8, v5

    .line 269
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgww;->zzD(I)I

    move-result v0

    .line 270
    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/zzgww;->zzE(J)I

    move-result v5

    goto :goto_1a

    :pswitch_41
    move v5, v11

    .line 271
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgzf;->zzO(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 272
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    .line 273
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgww;->zzD(I)I

    move-result v0

    .line 274
    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/zzgww;->zzE(J)I

    move-result v5

    goto :goto_1a

    :pswitch_42
    move v5, v11

    .line 275
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgzf;->zzO(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 276
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    .line 277
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgww;->zzD(I)I

    move-result v0

    .line 278
    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/zzgww;->zzE(J)I

    move-result v5

    :goto_1a
    add-int/2addr v0, v5

    goto :goto_1c

    :pswitch_43
    move v5, v11

    .line 279
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgzf;->zzO(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 280
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgww;->zzD(I)I

    move-result v0

    :goto_1b
    add-int/lit8 v0, v0, 0x4

    :goto_1c
    add-int v9, v14, v0

    move-object/from16 v0, p0

    goto :goto_1e

    :cond_1b
    move-object/from16 v0, p0

    goto :goto_1d

    :pswitch_44
    move v5, v11

    .line 281
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgzf;->zzO(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_1c

    shl-int/lit8 v1, v13, 0x3

    .line 282
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgww;->zzD(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    add-int v9, v14, v1

    goto :goto_1e

    :cond_1c
    :goto_1d
    move v9, v14

    :goto_1e
    add-int/lit8 v2, v2, 0x3

    move-object/from16 v1, p1

    const v8, 0xfffff

    goto/16 :goto_0

    :cond_1d
    move v14, v9

    .line 283
    move-object/from16 v1, p1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzgxr;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzgxr;->zzt:Lcom/google/android/gms/internal/ads/zzhai;

    .line 284
    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzhai;

    .line 285
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhai;->zza()I

    move-result v1

    add-int v9, v14, v1

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzgzf;->zzh:Z

    if-eqz v1, :cond_20

    .line 286
    move-object/from16 v1, p1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzgxn;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzgxn;->zza:Lcom/google/android/gms/internal/ads/zzgxg;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzgxg;->zza:Lcom/google/android/gms/internal/ads/zzhad;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhad;->zzc()I

    move-result v2

    const/4 v3, 0x0

    :goto_1f
    if-ge v7, v2, :cond_1e

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzgxg;->zza:Lcom/google/android/gms/internal/ads/zzhad;

    .line 287
    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/ads/zzhad;->zzg(I)Ljava/util/Map$Entry;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/google/android/gms/internal/ads/zzgzz;

    .line 288
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzgzz;->zza()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzgxf;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/google/android/gms/internal/ads/zzgxg;->zzc(Lcom/google/android/gms/internal/ads/zzgxf;Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v7, v7, 0x1

    goto :goto_1f

    :cond_1e
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzgxg;->zza:Lcom/google/android/gms/internal/ads/zzhad;

    .line 289
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhad;->zzd()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 290
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzgxf;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/android/gms/internal/ads/zzgxg;->zzc(Lcom/google/android/gms/internal/ads/zzgxf;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v3, v2

    goto :goto_20

    :cond_1f
    add-int/2addr v9, v3

    :cond_20
    return v9

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzb(Ljava/lang/Object;)I
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgzf;->zzc:[I

    array-length v2, v2

    if-ge v0, v2, :cond_2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgzf;->zzu(I)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzgzf;->zzc:[I

    const v4, 0xfffff

    and-int/2addr v4, v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgzf;->zzt(I)I

    move-result v2

    .line 2
    aget v3, v3, v0

    int-to-long v4, v4

    const/16 v6, 0x25

    const/16 v7, 0x20

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_4

    .line 3
    :pswitch_0
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/ads/zzgzf;->zzR(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 4
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhao;->zzh(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_2

    .line 6
    :pswitch_1
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/ads/zzgzf;->zzR(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 7
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzgzf;->zzv(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/ads/zzgye;->zzb:[B

    goto/16 :goto_3

    .line 8
    :pswitch_2
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/ads/zzgzf;->zzR(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 9
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzgzf;->zzp(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_2

    .line 10
    :pswitch_3
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/ads/zzgzf;->zzR(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 11
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzgzf;->zzv(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/ads/zzgye;->zzb:[B

    goto/16 :goto_3

    .line 12
    :pswitch_4
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/ads/zzgzf;->zzR(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 13
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzgzf;->zzp(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_2

    .line 14
    :pswitch_5
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/ads/zzgzf;->zzR(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 15
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzgzf;->zzp(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_2

    .line 16
    :pswitch_6
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/ads/zzgzf;->zzR(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 17
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzgzf;->zzp(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_2

    .line 18
    :pswitch_7
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/ads/zzgzf;->zzR(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 19
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhao;->zzh(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_2

    .line 20
    :pswitch_8
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/ads/zzgzf;->zzR(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 21
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhao;->zzh(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 22
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_2

    .line 23
    :pswitch_9
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/ads/zzgzf;->zzR(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 24
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhao;->zzh(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_2

    .line 25
    :pswitch_a
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/ads/zzgzf;->zzR(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 26
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzgzf;->zzS(Ljava/lang/Object;J)Z

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgye;->zza(Z)I

    move-result v2

    goto/16 :goto_2

    .line 27
    :pswitch_b
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/ads/zzgzf;->zzR(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 28
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzgzf;->zzp(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_2

    .line 29
    :pswitch_c
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/ads/zzgzf;->zzR(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 30
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzgzf;->zzv(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/ads/zzgye;->zzb:[B

    goto/16 :goto_3

    .line 31
    :pswitch_d
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/ads/zzgzf;->zzR(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 32
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzgzf;->zzp(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_2

    .line 33
    :pswitch_e
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/ads/zzgzf;->zzR(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 34
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzgzf;->zzv(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/ads/zzgye;->zzb:[B

    goto/16 :goto_3

    .line 35
    :pswitch_f
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/ads/zzgzf;->zzR(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 36
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzgzf;->zzv(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/ads/zzgye;->zzb:[B

    goto/16 :goto_3

    .line 37
    :pswitch_10
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/ads/zzgzf;->zzR(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 38
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzgzf;->zzo(Ljava/lang/Object;J)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    goto/16 :goto_2

    .line 39
    :pswitch_11
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/ads/zzgzf;->zzR(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 40
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzgzf;->zzn(Ljava/lang/Object;J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/ads/zzgye;->zzb:[B

    goto/16 :goto_3

    :pswitch_12
    mul-int/lit8 v1, v1, 0x35

    .line 41
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhao;->zzh(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_2

    :pswitch_13
    mul-int/lit8 v1, v1, 0x35

    .line 42
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhao;->zzh(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_2

    :pswitch_14
    mul-int/lit8 v1, v1, 0x35

    .line 43
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhao;->zzh(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 44
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v6

    goto :goto_1

    :pswitch_15
    mul-int/lit8 v1, v1, 0x35

    .line 45
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhao;->zzf(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/ads/zzgye;->zzb:[B

    goto/16 :goto_3

    :pswitch_16
    mul-int/lit8 v1, v1, 0x35

    .line 46
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhao;->zzd(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_2

    :pswitch_17
    mul-int/lit8 v1, v1, 0x35

    .line 47
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhao;->zzf(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/ads/zzgye;->zzb:[B

    goto/16 :goto_3

    :pswitch_18
    mul-int/lit8 v1, v1, 0x35

    .line 48
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhao;->zzd(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_2

    :pswitch_19
    mul-int/lit8 v1, v1, 0x35

    .line 49
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhao;->zzd(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_2

    :pswitch_1a
    mul-int/lit8 v1, v1, 0x35

    .line 50
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhao;->zzd(Ljava/lang/Object;J)I

    move-result v2

    goto :goto_2

    :pswitch_1b
    mul-int/lit8 v1, v1, 0x35

    .line 51
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhao;->zzh(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :pswitch_1c
    mul-int/lit8 v1, v1, 0x35

    .line 52
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhao;->zzh(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 53
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v6

    :cond_0
    :goto_1
    add-int/2addr v1, v6

    goto :goto_4

    :pswitch_1d
    mul-int/lit8 v1, v1, 0x35

    .line 54
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhao;->zzh(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    :pswitch_1e
    mul-int/lit8 v1, v1, 0x35

    .line 55
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhao;->zzz(Ljava/lang/Object;J)Z

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgye;->zza(Z)I

    move-result v2

    goto :goto_2

    :pswitch_1f
    mul-int/lit8 v1, v1, 0x35

    .line 56
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhao;->zzd(Ljava/lang/Object;J)I

    move-result v2

    goto :goto_2

    :pswitch_20
    mul-int/lit8 v1, v1, 0x35

    .line 57
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhao;->zzf(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/ads/zzgye;->zzb:[B

    goto :goto_3

    :pswitch_21
    mul-int/lit8 v1, v1, 0x35

    .line 58
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhao;->zzd(Ljava/lang/Object;J)I

    move-result v2

    goto :goto_2

    :pswitch_22
    mul-int/lit8 v1, v1, 0x35

    .line 59
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhao;->zzf(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/ads/zzgye;->zzb:[B

    goto :goto_3

    :pswitch_23
    mul-int/lit8 v1, v1, 0x35

    .line 60
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhao;->zzf(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/ads/zzgye;->zzb:[B

    goto :goto_3

    :pswitch_24
    mul-int/lit8 v1, v1, 0x35

    .line 61
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhao;->zzc(Ljava/lang/Object;J)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    :goto_2
    add-int/2addr v1, v2

    goto :goto_4

    :pswitch_25
    mul-int/lit8 v1, v1, 0x35

    .line 62
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhao;->zzb(Ljava/lang/Object;J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 63
    sget-object v4, Lcom/google/android/gms/internal/ads/zzgye;->zzb:[B

    :goto_3
    ushr-long v4, v2, v7

    xor-long/2addr v2, v4

    long-to-int v3, v2

    add-int/2addr v1, v3

    :cond_1
    :goto_4
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_0

    :cond_2
    mul-int/lit8 v1, v1, 0x35

    .line 64
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgxr;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzgxr;->zzt:Lcom/google/android/gms/internal/ads/zzhai;

    .line 65
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgzf;->zzh:Z

    if-eqz v0, :cond_3

    mul-int/lit8 v1, v1, 0x35

    .line 66
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgxn;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzgxn;->zza:Lcom/google/android/gms/internal/ads/zzgxg;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzgxg;->zza:Lcom/google/android/gms/internal/ads/zzhad;

    .line 67
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhad;->hashCode()I

    move-result p1

    add-int/2addr v1, p1

    :cond_3
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method final zzc(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/ads/zzgvx;)I
    .locals 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v7, p2

    move/from16 v8, p4

    move-object/from16 v10, p6

    .line 1
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgzf;->zzD(Ljava/lang/Object;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgzf;->zzb:Lsun/misc/Unsafe;

    const/4 v12, -0x1

    move/from16 v3, p3

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v14, 0xfffff

    const/4 v15, 0x0

    :goto_0
    if-ge v3, v8, :cond_6d

    add-int/lit8 v6, v3, 0x1

    .line 2
    aget-byte v3, v7, v3

    if-gez v3, :cond_0

    .line 3
    invoke-static {v3, v7, v6, v10}, Lcom/google/android/gms/internal/ads/zzgvy;->zzi(I[BILcom/google/android/gms/internal/ads/zzgvx;)I

    move-result v6

    iget v3, v10, Lcom/google/android/gms/internal/ads/zzgvx;->zza:I

    :cond_0
    move/from16 v30, v6

    move v6, v3

    move/from16 v3, v30

    ushr-int/lit8 v11, v6, 0x3

    const v16, 0xfffff

    const/4 v13, 0x3

    if-le v11, v4, :cond_2

    div-int/2addr v5, v13

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzgzf;->zze:I

    if-lt v11, v4, :cond_1

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzgzf;->zzf:I

    if-gt v11, v4, :cond_1

    .line 4
    invoke-direct {v0, v11, v5}, Lcom/google/android/gms/internal/ads/zzgzf;->zzs(II)I

    move-result v4

    goto :goto_1

    :cond_1
    const/4 v4, -0x1

    goto :goto_1

    .line 5
    :cond_2
    invoke-direct {v0, v11}, Lcom/google/android/gms/internal/ads/zzgzf;->zzq(I)I

    move-result v4

    :goto_1
    const/16 v17, 0x0

    if-ne v4, v12, :cond_3

    move/from16 v9, p5

    move-object/from16 v24, v1

    move-object v13, v2

    move v4, v3

    move v12, v6

    move-object v3, v7

    move v7, v11

    move/from16 v19, v15

    const/4 v11, 0x0

    move-object v15, v10

    goto/16 :goto_47

    :cond_3
    and-int/lit8 v5, v6, 0x7

    .line 253
    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzgzf;->zzc:[I

    add-int/lit8 v18, v4, 0x1

    .line 6
    aget v13, v12, v18

    move/from16 v18, v4

    invoke-static {v13}, Lcom/google/android/gms/internal/ads/zzgzf;->zzt(I)I

    move-result v4

    move/from16 v19, v6

    and-int v6, v13, v16

    move/from16 v20, v11

    move-object/from16 v21, v12

    int-to-long v11, v6

    const-wide/16 v22, 0x0

    const-string v6, ""

    const-string v8, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    move-wide/from16 v24, v11

    const/16 v11, 0x11

    const/16 v26, 0x1

    if-gt v4, v11, :cond_16

    add-int/lit8 v11, v18, 0x2

    .line 7
    aget v11, v21, v11

    ushr-int/lit8 v21, v11, 0x14

    shl-int v21, v26, v21

    and-int v11, v11, v16

    if-eq v11, v14, :cond_6

    const v12, 0xfffff

    move/from16 v27, v13

    if-eq v14, v12, :cond_4

    int-to-long v12, v14

    .line 8
    invoke-virtual {v1, v2, v12, v13, v15}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    const v12, 0xfffff

    :cond_4
    if-ne v11, v12, :cond_5

    const/4 v15, 0x0

    goto :goto_2

    :cond_5
    int-to-long v12, v11

    .line 9
    invoke-virtual {v1, v2, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v12

    move v15, v12

    :goto_2
    move v14, v11

    goto :goto_3

    :cond_6
    move/from16 v27, v13

    :goto_3
    packed-switch v4, :pswitch_data_0

    move-object/from16 p3, v10

    move-object v10, v7

    move-object/from16 v7, p3

    move/from16 p3, v14

    move v4, v15

    move/from16 v11, v18

    move/from16 v12, v19

    move-object v15, v1

    move-object v14, v2

    const/4 v1, 0x3

    if-ne v5, v1, :cond_15

    or-int v8, v4, v21

    .line 10
    invoke-direct {v0, v14, v11}, Lcom/google/android/gms/internal/ads/zzgzf;->zzA(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    shl-int/lit8 v2, v20, 0x3

    or-int/lit8 v6, v2, 0x4

    .line 11
    invoke-direct {v0, v11}, Lcom/google/android/gms/internal/ads/zzgzf;->zzx(I)Lcom/google/android/gms/internal/ads/zzgzv;

    move-result-object v2

    move/from16 v5, p4

    move v4, v3

    move-object v3, v10

    .line 12
    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzgvy;->zzl(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzgzv;[BIIILcom/google/android/gms/internal/ads/zzgvx;)I

    move-result v2

    .line 13
    invoke-direct {v0, v14, v11, v1}, Lcom/google/android/gms/internal/ads/zzgzf;->zzJ(Ljava/lang/Object;ILjava/lang/Object;)V

    move-object/from16 v7, p2

    move-object/from16 v10, p6

    move v3, v2

    move v5, v11

    move v6, v12

    move-object v2, v14

    move-object v1, v15

    move/from16 v4, v20

    const/4 v12, -0x1

    move/from16 v14, p3

    move v15, v8

    goto/16 :goto_e

    :pswitch_0
    if-nez v5, :cond_7

    or-int v15, v15, v21

    .line 14
    invoke-static {v7, v3, v10}, Lcom/google/android/gms/internal/ads/zzgvy;->zzk([BILcom/google/android/gms/internal/ads/zzgvx;)I

    move-result v8

    iget-wide v3, v10, Lcom/google/android/gms/internal/ads/zzgvx;->zzb:J

    .line 15
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzgwp;->zzF(J)J

    move-result-wide v5

    move/from16 v11, v18

    move/from16 v12, v19

    move-wide/from16 v3, v24

    .line 16
    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move v3, v8

    move v5, v11

    move v6, v12

    goto/16 :goto_d

    :cond_7
    move/from16 v11, v18

    move/from16 v12, v19

    move/from16 p3, v14

    move v4, v15

    move-object v15, v1

    move-object v14, v2

    goto/16 :goto_12

    :pswitch_1
    move-object v13, v2

    move/from16 p3, v14

    move v2, v15

    move/from16 v11, v18

    move/from16 v12, v19

    move-wide/from16 v14, v24

    if-nez v5, :cond_a

    or-int v2, v2, v21

    .line 17
    invoke-static {v7, v3, v10}, Lcom/google/android/gms/internal/ads/zzgvy;->zzh([BILcom/google/android/gms/internal/ads/zzgvx;)I

    move-result v3

    iget v4, v10, Lcom/google/android/gms/internal/ads/zzgvx;->zza:I

    .line 18
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzgwp;->zzD(I)I

    move-result v4

    .line 19
    invoke-virtual {v1, v13, v14, v15, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_5

    :pswitch_2
    move-object v13, v2

    move/from16 p3, v14

    move v2, v15

    move/from16 v11, v18

    move/from16 v12, v19

    move-wide/from16 v14, v24

    if-nez v5, :cond_a

    .line 20
    invoke-static {v7, v3, v10}, Lcom/google/android/gms/internal/ads/zzgvy;->zzh([BILcom/google/android/gms/internal/ads/zzgvx;)I

    move-result v3

    iget v4, v10, Lcom/google/android/gms/internal/ads/zzgvx;->zza:I

    .line 21
    invoke-direct {v0, v11}, Lcom/google/android/gms/internal/ads/zzgzf;->zzw(I)Lcom/google/android/gms/internal/ads/zzgxx;

    move-result-object v5

    const/high16 v6, -0x80000000

    and-int v6, v27, v6

    if-eqz v6, :cond_9

    if-eqz v5, :cond_9

    .line 22
    invoke-interface {v5, v4}, Lcom/google/android/gms/internal/ads/zzgxx;->zza(I)Z

    move-result v5

    if-eqz v5, :cond_8

    goto :goto_4

    .line 24
    :cond_8
    invoke-static {v13}, Lcom/google/android/gms/internal/ads/zzgzf;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhai;

    move-result-object v5

    int-to-long v14, v4

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v5, v12, v4}, Lcom/google/android/gms/internal/ads/zzhai;->zzj(ILjava/lang/Object;)V

    goto :goto_5

    :cond_9
    :goto_4
    or-int v2, v2, v21

    .line 23
    invoke-virtual {v1, v13, v14, v15, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_5

    :pswitch_3
    move-object v13, v2

    move/from16 p3, v14

    move v2, v15

    move/from16 v11, v18

    move/from16 v12, v19

    move-wide/from16 v14, v24

    const/4 v4, 0x2

    if-ne v5, v4, :cond_a

    or-int v2, v2, v21

    .line 25
    invoke-static {v7, v3, v10}, Lcom/google/android/gms/internal/ads/zzgvy;->zza([BILcom/google/android/gms/internal/ads/zzgvx;)I

    move-result v3

    iget-object v4, v10, Lcom/google/android/gms/internal/ads/zzgvx;->zzc:Ljava/lang/Object;

    .line 26
    invoke-virtual {v1, v13, v14, v15, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_5
    move/from16 v14, p3

    move/from16 v8, p4

    move v15, v2

    goto/16 :goto_a

    :cond_a
    move-object v15, v1

    move v4, v2

    goto/16 :goto_c

    :pswitch_4
    move-object v13, v2

    move/from16 p3, v14

    move v2, v15

    move/from16 v11, v18

    move/from16 v12, v19

    const/4 v4, 0x2

    if-ne v5, v4, :cond_b

    or-int v15, v2, v21

    move-object v2, v1

    .line 27
    invoke-direct {v0, v13, v11}, Lcom/google/android/gms/internal/ads/zzgzf;->zzA(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v2

    .line 28
    invoke-direct {v0, v11}, Lcom/google/android/gms/internal/ads/zzgzf;->zzx(I)Lcom/google/android/gms/internal/ads/zzgzv;

    move-result-object v2

    move-object v5, v4

    move v4, v3

    move-object v3, v7

    move-object v7, v5

    move/from16 v5, p4

    move-object v6, v10

    .line 29
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzgvy;->zzm(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzgzv;[BIILcom/google/android/gms/internal/ads/zzgvx;)I

    move-result v2

    move-object v10, v3

    move-object v3, v1

    move-object v1, v6

    .line 30
    invoke-direct {v0, v13, v11, v3}, Lcom/google/android/gms/internal/ads/zzgzf;->zzJ(Ljava/lang/Object;ILjava/lang/Object;)V

    move-object v3, v10

    move-object v10, v1

    move-object v1, v7

    move-object v7, v3

    move/from16 v14, p3

    move/from16 v8, p4

    move v3, v2

    goto/16 :goto_a

    :cond_b
    move-object/from16 v30, v7

    move-object v7, v1

    move-object v1, v10

    move-object/from16 v10, v30

    goto/16 :goto_b

    :pswitch_5
    move-object/from16 p3, v7

    move-object v7, v1

    move-object v1, v10

    move-object/from16 v10, p3

    move-object v13, v2

    move/from16 p3, v14

    move v2, v15

    move/from16 v11, v18

    move/from16 v12, v19

    move-wide/from16 v14, v24

    const/4 v4, 0x2

    if-ne v5, v4, :cond_12

    invoke-static/range {v27 .. v27}, Lcom/google/android/gms/internal/ads/zzgzf;->zzM(I)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 31
    invoke-static {v10, v3, v1}, Lcom/google/android/gms/internal/ads/zzgvy;->zzh([BILcom/google/android/gms/internal/ads/zzgvx;)I

    move-result v3

    iget v4, v1, Lcom/google/android/gms/internal/ads/zzgvx;->zza:I

    if-ltz v4, :cond_d

    or-int v2, v2, v21

    if-nez v4, :cond_c

    .line 259
    iput-object v6, v1, Lcom/google/android/gms/internal/ads/zzgvx;->zzc:Ljava/lang/Object;

    goto :goto_7

    .line 32
    :cond_c
    invoke-static {v10, v3, v4}, Lcom/google/android/gms/internal/ads/zzhat;->zzh([BII)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/google/android/gms/internal/ads/zzgvx;->zzc:Ljava/lang/Object;

    goto :goto_6

    .line 31
    :cond_d
    new-instance v1, Lcom/google/android/gms/internal/ads/zzgyg;

    .line 258
    invoke-direct {v1, v8}, Lcom/google/android/gms/internal/ads/zzgyg;-><init>(Ljava/lang/String;)V

    .line 259
    throw v1

    :cond_e
    or-int v2, v2, v21

    .line 33
    invoke-static {v10, v3, v1}, Lcom/google/android/gms/internal/ads/zzgvy;->zzh([BILcom/google/android/gms/internal/ads/zzgvx;)I

    move-result v3

    iget v4, v1, Lcom/google/android/gms/internal/ads/zzgvx;->zza:I

    if-ltz v4, :cond_10

    if-nez v4, :cond_f

    .line 261
    iput-object v6, v1, Lcom/google/android/gms/internal/ads/zzgvx;->zzc:Ljava/lang/Object;

    goto :goto_7

    :cond_f
    new-instance v5, Ljava/lang/String;

    .line 34
    sget-object v6, Lcom/google/android/gms/internal/ads/zzgye;->zza:Ljava/nio/charset/Charset;

    invoke-direct {v5, v10, v3, v4, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v5, v1, Lcom/google/android/gms/internal/ads/zzgvx;->zzc:Ljava/lang/Object;

    :goto_6
    add-int/2addr v3, v4

    .line 259
    :goto_7
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzgvx;->zzc:Ljava/lang/Object;

    .line 35
    invoke-virtual {v7, v13, v14, v15, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_9

    .line 33
    :cond_10
    new-instance v1, Lcom/google/android/gms/internal/ads/zzgyg;

    .line 260
    invoke-direct {v1, v8}, Lcom/google/android/gms/internal/ads/zzgyg;-><init>(Ljava/lang/String;)V

    .line 261
    throw v1

    :pswitch_6
    move-object/from16 p3, v7

    move-object v7, v1

    move-object v1, v10

    move-object/from16 v10, p3

    move-object v13, v2

    move/from16 p3, v14

    move v2, v15

    move/from16 v11, v18

    move/from16 v12, v19

    move-wide/from16 v14, v24

    if-nez v5, :cond_12

    or-int v2, v2, v21

    .line 36
    invoke-static {v10, v3, v1}, Lcom/google/android/gms/internal/ads/zzgvy;->zzk([BILcom/google/android/gms/internal/ads/zzgvx;)I

    move-result v3

    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/zzgvx;->zzb:J

    cmp-long v6, v4, v22

    if-eqz v6, :cond_11

    const/4 v4, 0x1

    goto :goto_8

    :cond_11
    const/4 v4, 0x0

    .line 37
    :goto_8
    invoke-static {v13, v14, v15, v4}, Lcom/google/android/gms/internal/ads/zzhao;->zzp(Ljava/lang/Object;JZ)V

    :goto_9
    move-object v4, v10

    move-object v10, v1

    move-object v1, v7

    move-object v7, v4

    goto/16 :goto_5

    :pswitch_7
    move-object/from16 p3, v7

    move-object v7, v1

    move-object v1, v10

    move-object/from16 v10, p3

    move-object v13, v2

    move/from16 p3, v14

    move v2, v15

    move/from16 v11, v18

    move/from16 v12, v19

    move-wide/from16 v14, v24

    const/4 v4, 0x5

    if-ne v5, v4, :cond_12

    add-int/lit8 v4, v3, 0x4

    or-int v2, v2, v21

    .line 38
    invoke-static {v10, v3}, Lcom/google/android/gms/internal/ads/zzgvy;->zzb([BI)I

    move-result v3

    invoke-virtual {v7, v13, v14, v15, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move-object v3, v10

    move-object v10, v1

    move-object v1, v7

    move-object v7, v3

    move/from16 v14, p3

    move/from16 v8, p4

    move v15, v2

    move v3, v4

    :goto_a
    move v5, v11

    move v6, v12

    move-object v2, v13

    move/from16 v4, v20

    goto/16 :goto_11

    :cond_12
    :goto_b
    move v4, v2

    move-object v15, v7

    :goto_c
    move-object v14, v13

    goto/16 :goto_12

    :pswitch_8
    move-object/from16 p3, v7

    move-object v7, v1

    move-object v1, v10

    move-object/from16 v10, p3

    move-object v13, v2

    move/from16 p3, v14

    move v2, v15

    move/from16 v11, v18

    move/from16 v12, v19

    move-wide/from16 v14, v24

    const/4 v4, 0x1

    if-ne v5, v4, :cond_13

    add-int/lit8 v8, v3, 0x8

    or-int v17, v2, v21

    .line 39
    invoke-static {v10, v3}, Lcom/google/android/gms/internal/ads/zzgvy;->zzn([BI)J

    move-result-wide v5

    move-object v2, v7

    move-object v7, v1

    move-object v1, v2

    move-object v2, v13

    move-wide v3, v14

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move-object v3, v10

    move-object v10, v7

    move-object v7, v3

    move/from16 v14, p3

    move v3, v8

    move v5, v11

    move v6, v12

    move/from16 v15, v17

    goto/16 :goto_d

    :cond_13
    move-object v4, v7

    move-object v7, v1

    move-object v15, v4

    move-object v14, v13

    goto/16 :goto_f

    :pswitch_9
    move-object/from16 p3, v10

    move-object v10, v7

    move-object/from16 v7, p3

    move-object v4, v1

    move-object v1, v2

    move/from16 p3, v14

    move v2, v15

    move/from16 v11, v18

    move/from16 v12, v19

    move-wide/from16 v14, v24

    if-nez v5, :cond_14

    or-int v2, v2, v21

    .line 40
    invoke-static {v10, v3, v7}, Lcom/google/android/gms/internal/ads/zzgvy;->zzh([BILcom/google/android/gms/internal/ads/zzgvx;)I

    move-result v3

    iget v5, v7, Lcom/google/android/gms/internal/ads/zzgvx;->zza:I

    .line 41
    invoke-virtual {v4, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move-object v5, v10

    move-object v10, v7

    move-object v7, v5

    move/from16 v14, p3

    move/from16 v8, p4

    move v15, v2

    move v5, v11

    move v6, v12

    const/4 v12, -0x1

    move-object v2, v1

    move-object v1, v4

    goto/16 :goto_10

    :pswitch_a
    move-object/from16 p3, v10

    move-object v10, v7

    move-object/from16 v7, p3

    move-object v4, v1

    move-object v1, v2

    move/from16 p3, v14

    move v2, v15

    move/from16 v11, v18

    move/from16 v12, v19

    move-wide/from16 v14, v24

    if-nez v5, :cond_14

    or-int v8, v2, v21

    .line 42
    invoke-static {v10, v3, v7}, Lcom/google/android/gms/internal/ads/zzgvy;->zzk([BILcom/google/android/gms/internal/ads/zzgvx;)I

    move-result v13

    iget-wide v5, v7, Lcom/google/android/gms/internal/ads/zzgvx;->zzb:J

    move-object v2, v1

    move-object v1, v4

    move-wide v3, v14

    .line 43
    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move-object v3, v10

    move-object v10, v7

    move-object v7, v3

    move/from16 v14, p3

    move v15, v8

    move v5, v11

    move v6, v12

    move v3, v13

    :goto_d
    move/from16 v4, v20

    const/4 v12, -0x1

    :goto_e
    move/from16 v8, p4

    goto/16 :goto_0

    :cond_14
    move-object v14, v1

    move-object v15, v4

    :goto_f
    move v4, v2

    goto/16 :goto_12

    :pswitch_b
    move-object/from16 p3, v10

    move-object v10, v7

    move-object/from16 v7, p3

    move/from16 p3, v14

    move v4, v15

    move/from16 v11, v18

    move/from16 v12, v19

    const/4 v6, 0x5

    move-object v15, v1

    move-object v14, v2

    move-wide/from16 v1, v24

    if-ne v5, v6, :cond_15

    add-int/lit8 v5, v3, 0x4

    or-int v4, v4, v21

    .line 44
    invoke-static {v10, v3}, Lcom/google/android/gms/internal/ads/zzgvy;->zzb([BI)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    .line 45
    invoke-static {v14, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzhao;->zzs(Ljava/lang/Object;JF)V

    move-object v1, v10

    move-object v10, v7

    move-object v7, v1

    move/from16 v8, p4

    move v3, v5

    move v5, v11

    move v6, v12

    move-object v2, v14

    move-object v1, v15

    const/4 v12, -0x1

    move/from16 v14, p3

    move v15, v4

    :goto_10
    move/from16 v4, v20

    goto/16 :goto_0

    :pswitch_c
    move-object/from16 p3, v10

    move-object v10, v7

    move-object/from16 v7, p3

    move/from16 p3, v14

    move v4, v15

    move/from16 v11, v18

    move/from16 v12, v19

    const/4 v6, 0x1

    move-object v15, v1

    move-object v14, v2

    move-wide/from16 v1, v24

    if-ne v5, v6, :cond_15

    add-int/lit8 v5, v3, 0x8

    or-int v4, v4, v21

    .line 46
    invoke-static {v10, v3}, Lcom/google/android/gms/internal/ads/zzgvy;->zzn([BI)J

    move-result-wide v18

    move v6, v4

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v3

    .line 47
    invoke-static {v14, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzhao;->zzr(Ljava/lang/Object;JD)V

    move-object v1, v10

    move-object v10, v7

    move-object v7, v1

    move/from16 v8, p4

    move v3, v5

    move v5, v11

    move-object v2, v14

    move-object v1, v15

    move/from16 v4, v20

    move/from16 v14, p3

    move v15, v6

    move v6, v12

    :goto_11
    const/4 v12, -0x1

    goto/16 :goto_0

    :cond_15
    :goto_12
    move/from16 v9, p5

    move/from16 v19, v4

    move-object v13, v14

    move-object/from16 v24, v15

    move/from16 v7, v20

    move/from16 v14, p3

    move-object/from16 v15, p6

    move v4, v3

    :goto_13
    move-object/from16 v3, p2

    goto/16 :goto_47

    :cond_16
    move-object v10, v1

    move/from16 v27, v13

    move/from16 v11, v18

    move/from16 v12, v19

    move-object v13, v2

    move-wide/from16 v1, v24

    const/16 v7, 0x1b

    if-ne v4, v7, :cond_1a

    const/4 v7, 0x2

    if-ne v5, v7, :cond_19

    .line 48
    invoke-virtual {v10, v13, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzgyd;

    .line 49
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzgyd;->zzc()Z

    move-result v5

    if-nez v5, :cond_18

    .line 50
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzgyd;->size()I

    move-result v5

    if-nez v5, :cond_17

    const/16 v5, 0xa

    goto :goto_14

    :cond_17
    add-int/2addr v5, v5

    .line 51
    :goto_14
    invoke-interface {v4, v5}, Lcom/google/android/gms/internal/ads/zzgyd;->zzf(I)Lcom/google/android/gms/internal/ads/zzgyd;

    move-result-object v4

    .line 52
    invoke-virtual {v10, v13, v1, v2, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_18
    move-object v6, v4

    .line 53
    invoke-direct {v0, v11}, Lcom/google/android/gms/internal/ads/zzgzf;->zzx(I)Lcom/google/android/gms/internal/ads/zzgzv;

    move-result-object v1

    move/from16 v5, p4

    move-object/from16 v7, p6

    move v4, v3

    move v2, v12

    move-object/from16 v3, p2

    .line 54
    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzgvy;->zze(Lcom/google/android/gms/internal/ads/zzgzv;I[BIILcom/google/android/gms/internal/ads/zzgyd;Lcom/google/android/gms/internal/ads/zzgvx;)I

    move-result v1

    move-object v7, v3

    move v8, v5

    move v5, v11

    move v6, v12

    move-object v2, v13

    move/from16 v4, v20

    const/4 v12, -0x1

    move v3, v1

    move-object v1, v10

    move-object/from16 v10, p6

    goto/16 :goto_0

    :cond_19
    move/from16 v7, p4

    move v4, v3

    move-object/from16 v3, p2

    move-object/from16 v24, v10

    move/from16 v18, v14

    move/from16 v19, v15

    move-object/from16 v14, p6

    move v15, v4

    goto/16 :goto_3c

    :cond_1a
    move/from16 v7, p4

    move-object/from16 v24, v10

    move/from16 v18, v14

    move/from16 v19, v15

    move-object/from16 v14, p6

    move v15, v3

    move-object/from16 v3, p2

    const/16 v10, 0x31

    const-string v9, "Protocol message had invalid UTF-8."

    if-gt v4, v10, :cond_5c

    move-object/from16 v25, v9

    move/from16 v10, v27

    int-to-long v9, v10

    move-wide/from16 v27, v9

    sget-object v9, Lcom/google/android/gms/internal/ads/zzgzf;->zzb:Lsun/misc/Unsafe;

    .line 55
    invoke-virtual {v9, v13, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/ads/zzgyd;

    .line 56
    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/zzgyd;->zzc()Z

    move-result v21

    if-nez v21, :cond_1b

    .line 57
    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/zzgyd;->size()I

    move-result v21

    move/from16 v29, v4

    add-int v4, v21, v21

    .line 58
    invoke-interface {v10, v4}, Lcom/google/android/gms/internal/ads/zzgyd;->zzf(I)Lcom/google/android/gms/internal/ads/zzgyd;

    move-result-object v10

    .line 59
    invoke-virtual {v9, v13, v1, v2, v10}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_15

    :cond_1b
    move/from16 v29, v4

    :goto_15
    const-string v1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    packed-switch v29, :pswitch_data_1

    move v9, v7

    move-object v6, v14

    const/4 v1, 0x3

    if-ne v5, v1, :cond_59

    and-int/lit8 v1, v12, -0x8

    or-int/lit8 v5, v1, 0x4

    .line 60
    invoke-direct {v0, v11}, Lcom/google/android/gms/internal/ads/zzgzf;->zzx(I)Lcom/google/android/gms/internal/ads/zzgzv;

    move-result-object v1

    move-object v2, v3

    move v4, v9

    move v3, v15

    .line 61
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzgvy;->zzc(Lcom/google/android/gms/internal/ads/zzgzv;[BIIILcom/google/android/gms/internal/ads/zzgvx;)I

    move-result v7

    iget-object v2, v6, Lcom/google/android/gms/internal/ads/zzgvx;->zzc:Ljava/lang/Object;

    .line 62
    invoke-interface {v10, v2}, Lcom/google/android/gms/internal/ads/zzgyd;->add(Ljava/lang/Object;)Z

    goto/16 :goto_39

    :pswitch_d
    const/4 v4, 0x2

    if-ne v5, v4, :cond_1e

    .line 66
    sget v2, Lcom/google/android/gms/internal/ads/zzgvy;->zza:I

    .line 67
    check-cast v10, Lcom/google/android/gms/internal/ads/zzgyr;

    .line 68
    invoke-static {v3, v15, v14}, Lcom/google/android/gms/internal/ads/zzgvy;->zzh([BILcom/google/android/gms/internal/ads/zzgvx;)I

    move-result v2

    iget v4, v14, Lcom/google/android/gms/internal/ads/zzgvx;->zza:I

    add-int/2addr v4, v2

    :goto_16
    if-ge v2, v4, :cond_1c

    .line 69
    invoke-static {v3, v2, v14}, Lcom/google/android/gms/internal/ads/zzgvy;->zzk([BILcom/google/android/gms/internal/ads/zzgvx;)I

    move-result v2

    iget-wide v5, v14, Lcom/google/android/gms/internal/ads/zzgvx;->zzb:J

    .line 70
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzgwp;->zzF(J)J

    move-result-wide v5

    invoke-virtual {v10, v5, v6}, Lcom/google/android/gms/internal/ads/zzgyr;->zzg(J)V

    goto :goto_16

    :cond_1c
    if-ne v2, v4, :cond_1d

    goto :goto_19

    .line 305
    :cond_1d
    new-instance v2, Lcom/google/android/gms/internal/ads/zzgyg;

    .line 262
    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzgyg;-><init>(Ljava/lang/String;)V

    .line 263
    throw v2

    :cond_1e
    if-nez v5, :cond_5a

    .line 71
    sget v1, Lcom/google/android/gms/internal/ads/zzgvy;->zza:I

    .line 72
    check-cast v10, Lcom/google/android/gms/internal/ads/zzgyr;

    .line 73
    invoke-static {v3, v15, v14}, Lcom/google/android/gms/internal/ads/zzgvy;->zzk([BILcom/google/android/gms/internal/ads/zzgvx;)I

    move-result v1

    iget-wide v4, v14, Lcom/google/android/gms/internal/ads/zzgvx;->zzb:J

    .line 74
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzgwp;->zzF(J)J

    move-result-wide v4

    invoke-virtual {v10, v4, v5}, Lcom/google/android/gms/internal/ads/zzgyr;->zzg(J)V

    :goto_17
    if-ge v1, v7, :cond_22

    .line 75
    invoke-static {v3, v1, v14}, Lcom/google/android/gms/internal/ads/zzgvy;->zzh([BILcom/google/android/gms/internal/ads/zzgvx;)I

    move-result v2

    iget v4, v14, Lcom/google/android/gms/internal/ads/zzgvx;->zza:I

    if-ne v12, v4, :cond_22

    .line 76
    invoke-static {v3, v2, v14}, Lcom/google/android/gms/internal/ads/zzgvy;->zzk([BILcom/google/android/gms/internal/ads/zzgvx;)I

    move-result v1

    iget-wide v4, v14, Lcom/google/android/gms/internal/ads/zzgvx;->zzb:J

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzgwp;->zzF(J)J

    move-result-wide v4

    .line 77
    invoke-virtual {v10, v4, v5}, Lcom/google/android/gms/internal/ads/zzgyr;->zzg(J)V

    goto :goto_17

    :pswitch_e
    const/4 v4, 0x2

    if-ne v5, v4, :cond_21

    .line 78
    sget v2, Lcom/google/android/gms/internal/ads/zzgvy;->zza:I

    .line 79
    check-cast v10, Lcom/google/android/gms/internal/ads/zzgxs;

    .line 80
    invoke-static {v3, v15, v14}, Lcom/google/android/gms/internal/ads/zzgvy;->zzh([BILcom/google/android/gms/internal/ads/zzgvx;)I

    move-result v2

    iget v4, v14, Lcom/google/android/gms/internal/ads/zzgvx;->zza:I

    add-int/2addr v4, v2

    :goto_18
    if-ge v2, v4, :cond_1f

    .line 81
    invoke-static {v3, v2, v14}, Lcom/google/android/gms/internal/ads/zzgvy;->zzh([BILcom/google/android/gms/internal/ads/zzgvx;)I

    move-result v2

    iget v5, v14, Lcom/google/android/gms/internal/ads/zzgvx;->zza:I

    .line 82
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgwp;->zzD(I)I

    move-result v5

    invoke-virtual {v10, v5}, Lcom/google/android/gms/internal/ads/zzgxs;->zzi(I)V

    goto :goto_18

    :cond_1f
    if-ne v2, v4, :cond_20

    :goto_19
    move v3, v2

    goto/16 :goto_3b

    .line 263
    :cond_20
    new-instance v2, Lcom/google/android/gms/internal/ads/zzgyg;

    .line 264
    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzgyg;-><init>(Ljava/lang/String;)V

    .line 265
    throw v2

    :cond_21
    if-nez v5, :cond_5a

    .line 83
    sget v1, Lcom/google/android/gms/internal/ads/zzgvy;->zza:I

    .line 84
    check-cast v10, Lcom/google/android/gms/internal/ads/zzgxs;

    .line 85
    invoke-static {v3, v15, v14}, Lcom/google/android/gms/internal/ads/zzgvy;->zzh([BILcom/google/android/gms/internal/ads/zzgvx;)I

    move-result v1

    iget v2, v14, Lcom/google/android/gms/internal/ads/zzgvx;->zza:I

    .line 86
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgwp;->zzD(I)I

    move-result v2

    invoke-virtual {v10, v2}, Lcom/google/android/gms/internal/ads/zzgxs;->zzi(I)V

    :goto_1a
    if-ge v1, v7, :cond_22

    .line 87
    invoke-static {v3, v1, v14}, Lcom/google/android/gms/internal/ads/zzgvy;->zzh([BILcom/google/android/gms/internal/ads/zzgvx;)I

    move-result v2

    iget v4, v14, Lcom/google/android/gms/internal/ads/zzgvx;->zza:I

    if-ne v12, v4, :cond_22

    .line 88
    invoke-static {v3, v2, v14}, Lcom/google/android/gms/internal/ads/zzgvy;->zzh([BILcom/google/android/gms/internal/ads/zzgvx;)I

    move-result v1

    iget v2, v14, Lcom/google/android/gms/internal/ads/zzgvx;->zza:I

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgwp;->zzD(I)I

    move-result v2

    .line 89
    invoke-virtual {v10, v2}, Lcom/google/android/gms/internal/ads/zzgxs;->zzi(I)V

    goto :goto_1a

    :cond_22
    move v3, v1

    goto/16 :goto_3b

    :pswitch_f
    const/4 v4, 0x2

    if-ne v5, v4, :cond_23

    .line 90
    invoke-static {v3, v15, v10, v14}, Lcom/google/android/gms/internal/ads/zzgvy;->zzf([BILcom/google/android/gms/internal/ads/zzgyd;Lcom/google/android/gms/internal/ads/zzgvx;)I

    move-result v1

    move v9, v7

    move-object v5, v10

    move v7, v1

    move-object v10, v3

    goto :goto_1b

    :cond_23
    if-nez v5, :cond_24

    move-object v2, v3

    move v4, v7

    move-object v5, v10

    move v1, v12

    move-object v6, v14

    move v3, v15

    .line 91
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzgvy;->zzj(I[BIILcom/google/android/gms/internal/ads/zzgyd;Lcom/google/android/gms/internal/ads/zzgvx;)I

    move-result v7

    move-object v10, v2

    move v9, v4

    .line 92
    :goto_1b
    invoke-direct {v0, v11}, Lcom/google/android/gms/internal/ads/zzgzf;->zzw(I)Lcom/google/android/gms/internal/ads/zzgxx;

    move-result-object v4

    move-object v3, v5

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzgzf;->zzm:Lcom/google/android/gms/internal/ads/zzhah;

    move-object v1, v13

    move/from16 v2, v20

    .line 93
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzgzx;->zzn(Ljava/lang/Object;ILjava/util/List;Lcom/google/android/gms/internal/ads/zzgxx;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzhah;)Ljava/lang/Object;

    :goto_1c
    move v3, v7

    goto/16 :goto_3b

    :cond_24
    move-object v10, v3

    move v9, v7

    goto/16 :goto_3a

    :pswitch_10
    move-object v4, v10

    move-object v10, v3

    move-object v3, v4

    move v9, v7

    move/from16 v13, v20

    const/4 v4, 0x2

    if-ne v5, v4, :cond_39

    .line 94
    invoke-static {v10, v15, v14}, Lcom/google/android/gms/internal/ads/zzgvy;->zzh([BILcom/google/android/gms/internal/ads/zzgvx;)I

    move-result v2

    iget v4, v14, Lcom/google/android/gms/internal/ads/zzgvx;->zza:I

    if-ltz v4, :cond_2b

    .line 95
    array-length v5, v10

    sub-int/2addr v5, v2

    if-gt v4, v5, :cond_2a

    if-nez v4, :cond_25

    .line 96
    sget-object v4, Lcom/google/android/gms/internal/ads/zzgwj;->zzb:Lcom/google/android/gms/internal/ads/zzgwj;

    invoke-interface {v3, v4}, Lcom/google/android/gms/internal/ads/zzgyd;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 97
    :cond_25
    invoke-static {v10, v2, v4}, Lcom/google/android/gms/internal/ads/zzgwj;->zzv([BII)Lcom/google/android/gms/internal/ads/zzgwj;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/google/android/gms/internal/ads/zzgyd;->add(Ljava/lang/Object;)Z

    :goto_1d
    add-int/2addr v2, v4

    :goto_1e
    if-ge v2, v9, :cond_29

    .line 98
    invoke-static {v10, v2, v14}, Lcom/google/android/gms/internal/ads/zzgvy;->zzh([BILcom/google/android/gms/internal/ads/zzgvx;)I

    move-result v4

    iget v5, v14, Lcom/google/android/gms/internal/ads/zzgvx;->zza:I

    if-ne v12, v5, :cond_29

    .line 99
    invoke-static {v10, v4, v14}, Lcom/google/android/gms/internal/ads/zzgvy;->zzh([BILcom/google/android/gms/internal/ads/zzgvx;)I

    move-result v2

    iget v4, v14, Lcom/google/android/gms/internal/ads/zzgvx;->zza:I

    if-ltz v4, :cond_28

    .line 100
    array-length v5, v10

    sub-int/2addr v5, v2

    if-gt v4, v5, :cond_27

    if-nez v4, :cond_26

    .line 273
    sget-object v4, Lcom/google/android/gms/internal/ads/zzgwj;->zzb:Lcom/google/android/gms/internal/ads/zzgwj;

    .line 101
    invoke-interface {v3, v4}, Lcom/google/android/gms/internal/ads/zzgyd;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 102
    :cond_26
    invoke-static {v10, v2, v4}, Lcom/google/android/gms/internal/ads/zzgwj;->zzv([BII)Lcom/google/android/gms/internal/ads/zzgwj;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/google/android/gms/internal/ads/zzgyd;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 100
    :cond_27
    new-instance v2, Lcom/google/android/gms/internal/ads/zzgyg;

    .line 272
    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzgyg;-><init>(Ljava/lang/String;)V

    .line 273
    throw v2

    .line 99
    :cond_28
    new-instance v1, Lcom/google/android/gms/internal/ads/zzgyg;

    .line 270
    invoke-direct {v1, v8}, Lcom/google/android/gms/internal/ads/zzgyg;-><init>(Ljava/lang/String;)V

    .line 271
    throw v1

    :cond_29
    move v3, v2

    goto :goto_1f

    .line 95
    :cond_2a
    new-instance v2, Lcom/google/android/gms/internal/ads/zzgyg;

    .line 268
    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzgyg;-><init>(Ljava/lang/String;)V

    .line 269
    throw v2

    .line 94
    :cond_2b
    new-instance v1, Lcom/google/android/gms/internal/ads/zzgyg;

    .line 266
    invoke-direct {v1, v8}, Lcom/google/android/gms/internal/ads/zzgyg;-><init>(Ljava/lang/String;)V

    .line 267
    throw v1

    :pswitch_11
    move-object v4, v10

    move-object v10, v3

    move-object v3, v4

    move v9, v7

    move/from16 v13, v20

    const/4 v4, 0x2

    if-ne v5, v4, :cond_2c

    .line 103
    invoke-direct {v0, v11}, Lcom/google/android/gms/internal/ads/zzgzf;->zzx(I)Lcom/google/android/gms/internal/ads/zzgzv;

    move-result-object v1

    move-object v6, v3

    move v5, v9

    move-object v3, v10

    move v2, v12

    move-object v7, v14

    move v4, v15

    .line 104
    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzgvy;->zze(Lcom/google/android/gms/internal/ads/zzgzv;I[BIILcom/google/android/gms/internal/ads/zzgyd;Lcom/google/android/gms/internal/ads/zzgvx;)I

    move-result v1

    move v3, v1

    :goto_1f
    move/from16 v20, v13

    goto/16 :goto_3b

    :cond_2c
    move-object v3, v10

    goto/16 :goto_24

    :pswitch_12
    move v9, v7

    move-object v7, v14

    move/from16 v13, v20

    const/4 v4, 0x2

    if-ne v5, v4, :cond_38

    const-wide/32 v1, 0x20000000

    and-long v1, v27, v1

    cmp-long v4, v1, v22

    if-nez v4, :cond_31

    .line 105
    invoke-static {v3, v15, v7}, Lcom/google/android/gms/internal/ads/zzgvy;->zzh([BILcom/google/android/gms/internal/ads/zzgvx;)I

    move-result v1

    iget v2, v7, Lcom/google/android/gms/internal/ads/zzgvx;->zza:I

    if-ltz v2, :cond_30

    if-nez v2, :cond_2d

    .line 106
    invoke-interface {v10, v6}, Lcom/google/android/gms/internal/ads/zzgyd;->add(Ljava/lang/Object;)Z

    goto :goto_21

    .line 113
    :cond_2d
    new-instance v4, Ljava/lang/String;

    .line 107
    sget-object v5, Lcom/google/android/gms/internal/ads/zzgye;->zza:Ljava/nio/charset/Charset;

    invoke-direct {v4, v3, v1, v2, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 108
    invoke-interface {v10, v4}, Lcom/google/android/gms/internal/ads/zzgyd;->add(Ljava/lang/Object;)Z

    :goto_20
    add-int/2addr v1, v2

    :goto_21
    if-ge v1, v9, :cond_44

    .line 109
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/ads/zzgvy;->zzh([BILcom/google/android/gms/internal/ads/zzgvx;)I

    move-result v2

    iget v4, v7, Lcom/google/android/gms/internal/ads/zzgvx;->zza:I

    if-ne v12, v4, :cond_44

    .line 110
    invoke-static {v3, v2, v7}, Lcom/google/android/gms/internal/ads/zzgvy;->zzh([BILcom/google/android/gms/internal/ads/zzgvx;)I

    move-result v1

    iget v2, v7, Lcom/google/android/gms/internal/ads/zzgvx;->zza:I

    if-ltz v2, :cond_2f

    if-nez v2, :cond_2e

    .line 111
    invoke-interface {v10, v6}, Lcom/google/android/gms/internal/ads/zzgyd;->add(Ljava/lang/Object;)Z

    goto :goto_21

    :cond_2e
    new-instance v4, Ljava/lang/String;

    .line 112
    sget-object v5, Lcom/google/android/gms/internal/ads/zzgye;->zza:Ljava/nio/charset/Charset;

    invoke-direct {v4, v3, v1, v2, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 113
    invoke-interface {v10, v4}, Lcom/google/android/gms/internal/ads/zzgyd;->add(Ljava/lang/Object;)Z

    goto :goto_20

    .line 110
    :cond_2f
    new-instance v1, Lcom/google/android/gms/internal/ads/zzgyg;

    .line 276
    invoke-direct {v1, v8}, Lcom/google/android/gms/internal/ads/zzgyg;-><init>(Ljava/lang/String;)V

    .line 277
    throw v1

    .line 105
    :cond_30
    new-instance v1, Lcom/google/android/gms/internal/ads/zzgyg;

    .line 274
    invoke-direct {v1, v8}, Lcom/google/android/gms/internal/ads/zzgyg;-><init>(Ljava/lang/String;)V

    .line 275
    throw v1

    .line 114
    :cond_31
    invoke-static {v3, v15, v7}, Lcom/google/android/gms/internal/ads/zzgvy;->zzh([BILcom/google/android/gms/internal/ads/zzgvx;)I

    move-result v1

    iget v2, v7, Lcom/google/android/gms/internal/ads/zzgvx;->zza:I

    if-ltz v2, :cond_37

    if-nez v2, :cond_32

    .line 115
    invoke-interface {v10, v6}, Lcom/google/android/gms/internal/ads/zzgyd;->add(Ljava/lang/Object;)Z

    goto :goto_23

    :cond_32
    add-int v4, v1, v2

    .line 116
    invoke-static {v3, v1, v4}, Lcom/google/android/gms/internal/ads/zzhat;->zzi([BII)Z

    move-result v5

    if-eqz v5, :cond_36

    .line 281
    new-instance v5, Ljava/lang/String;

    move/from16 p3, v4

    .line 117
    sget-object v4, Lcom/google/android/gms/internal/ads/zzgye;->zza:Ljava/nio/charset/Charset;

    invoke-direct {v5, v3, v1, v2, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 118
    invoke-interface {v10, v5}, Lcom/google/android/gms/internal/ads/zzgyd;->add(Ljava/lang/Object;)Z

    :goto_22
    move/from16 v1, p3

    :goto_23
    if-ge v1, v9, :cond_44

    .line 119
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/ads/zzgvy;->zzh([BILcom/google/android/gms/internal/ads/zzgvx;)I

    move-result v2

    iget v4, v7, Lcom/google/android/gms/internal/ads/zzgvx;->zza:I

    if-ne v12, v4, :cond_44

    .line 120
    invoke-static {v3, v2, v7}, Lcom/google/android/gms/internal/ads/zzgvy;->zzh([BILcom/google/android/gms/internal/ads/zzgvx;)I

    move-result v1

    iget v2, v7, Lcom/google/android/gms/internal/ads/zzgvx;->zza:I

    if-ltz v2, :cond_35

    if-nez v2, :cond_33

    .line 121
    invoke-interface {v10, v6}, Lcom/google/android/gms/internal/ads/zzgyd;->add(Ljava/lang/Object;)Z

    goto :goto_23

    :cond_33
    add-int v4, v1, v2

    .line 122
    invoke-static {v3, v1, v4}, Lcom/google/android/gms/internal/ads/zzhat;->zzi([BII)Z

    move-result v5

    if-eqz v5, :cond_34

    .line 285
    new-instance v5, Ljava/lang/String;

    move/from16 p3, v4

    .line 123
    sget-object v4, Lcom/google/android/gms/internal/ads/zzgye;->zza:Ljava/nio/charset/Charset;

    invoke-direct {v5, v3, v1, v2, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 124
    invoke-interface {v10, v5}, Lcom/google/android/gms/internal/ads/zzgyd;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 122
    :cond_34
    new-instance v1, Lcom/google/android/gms/internal/ads/zzgyg;

    move-object/from16 v4, v25

    .line 284
    invoke-direct {v1, v4}, Lcom/google/android/gms/internal/ads/zzgyg;-><init>(Ljava/lang/String;)V

    .line 285
    throw v1

    .line 120
    :cond_35
    new-instance v1, Lcom/google/android/gms/internal/ads/zzgyg;

    .line 282
    invoke-direct {v1, v8}, Lcom/google/android/gms/internal/ads/zzgyg;-><init>(Ljava/lang/String;)V

    .line 283
    throw v1

    :cond_36
    move-object/from16 v4, v25

    .line 116
    new-instance v1, Lcom/google/android/gms/internal/ads/zzgyg;

    .line 280
    invoke-direct {v1, v4}, Lcom/google/android/gms/internal/ads/zzgyg;-><init>(Ljava/lang/String;)V

    .line 281
    throw v1

    .line 114
    :cond_37
    new-instance v1, Lcom/google/android/gms/internal/ads/zzgyg;

    .line 278
    invoke-direct {v1, v8}, Lcom/google/android/gms/internal/ads/zzgyg;-><init>(Ljava/lang/String;)V

    .line 279
    throw v1

    :cond_38
    move-object v14, v7

    :cond_39
    :goto_24
    move/from16 v20, v13

    goto/16 :goto_3a

    :pswitch_13
    move v9, v7

    move-object v7, v14

    move/from16 v13, v20

    const/4 v4, 0x2

    if-ne v5, v4, :cond_3d

    .line 125
    sget v2, Lcom/google/android/gms/internal/ads/zzgvy;->zza:I

    .line 126
    check-cast v10, Lcom/google/android/gms/internal/ads/zzgvz;

    .line 127
    invoke-static {v3, v15, v7}, Lcom/google/android/gms/internal/ads/zzgvy;->zzh([BILcom/google/android/gms/internal/ads/zzgvx;)I

    move-result v2

    iget v4, v7, Lcom/google/android/gms/internal/ads/zzgvx;->zza:I

    add-int/2addr v4, v2

    :goto_25
    if-ge v2, v4, :cond_3b

    .line 128
    invoke-static {v3, v2, v7}, Lcom/google/android/gms/internal/ads/zzgvy;->zzk([BILcom/google/android/gms/internal/ads/zzgvx;)I

    move-result v2

    iget-wide v5, v7, Lcom/google/android/gms/internal/ads/zzgvx;->zzb:J

    cmp-long v8, v5, v22

    if-eqz v8, :cond_3a

    const/4 v5, 0x1

    goto :goto_26

    :cond_3a
    const/4 v5, 0x0

    .line 129
    :goto_26
    invoke-virtual {v10, v5}, Lcom/google/android/gms/internal/ads/zzgvz;->zzg(Z)V

    goto :goto_25

    :cond_3b
    if-ne v2, v4, :cond_3c

    :goto_27
    move v3, v2

    goto/16 :goto_2d

    .line 265
    :cond_3c
    new-instance v2, Lcom/google/android/gms/internal/ads/zzgyg;

    .line 286
    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzgyg;-><init>(Ljava/lang/String;)V

    .line 287
    throw v2

    :cond_3d
    if-nez v5, :cond_38

    .line 130
    sget v1, Lcom/google/android/gms/internal/ads/zzgvy;->zza:I

    .line 131
    check-cast v10, Lcom/google/android/gms/internal/ads/zzgvz;

    .line 132
    invoke-static {v3, v15, v7}, Lcom/google/android/gms/internal/ads/zzgvy;->zzk([BILcom/google/android/gms/internal/ads/zzgvx;)I

    move-result v1

    iget-wide v4, v7, Lcom/google/android/gms/internal/ads/zzgvx;->zzb:J

    cmp-long v2, v4, v22

    if-eqz v2, :cond_3e

    const/4 v2, 0x1

    goto :goto_28

    :cond_3e
    const/4 v2, 0x0

    .line 133
    :goto_28
    invoke-virtual {v10, v2}, Lcom/google/android/gms/internal/ads/zzgvz;->zzg(Z)V

    :goto_29
    if-ge v1, v9, :cond_44

    .line 134
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/ads/zzgvy;->zzh([BILcom/google/android/gms/internal/ads/zzgvx;)I

    move-result v2

    iget v4, v7, Lcom/google/android/gms/internal/ads/zzgvx;->zza:I

    if-ne v12, v4, :cond_44

    .line 135
    invoke-static {v3, v2, v7}, Lcom/google/android/gms/internal/ads/zzgvy;->zzk([BILcom/google/android/gms/internal/ads/zzgvx;)I

    move-result v1

    iget-wide v4, v7, Lcom/google/android/gms/internal/ads/zzgvx;->zzb:J

    cmp-long v2, v4, v22

    if-eqz v2, :cond_3f

    const/4 v2, 0x1

    goto :goto_2a

    :cond_3f
    const/4 v2, 0x0

    .line 136
    :goto_2a
    invoke-virtual {v10, v2}, Lcom/google/android/gms/internal/ads/zzgvz;->zzg(Z)V

    goto :goto_29

    :pswitch_14
    move v9, v7

    move-object v7, v14

    move/from16 v13, v20

    const/4 v4, 0x2

    if-ne v5, v4, :cond_43

    .line 137
    sget v2, Lcom/google/android/gms/internal/ads/zzgvy;->zza:I

    .line 138
    check-cast v10, Lcom/google/android/gms/internal/ads/zzgxs;

    .line 139
    invoke-static {v3, v15, v7}, Lcom/google/android/gms/internal/ads/zzgvy;->zzh([BILcom/google/android/gms/internal/ads/zzgvx;)I

    move-result v2

    iget v4, v7, Lcom/google/android/gms/internal/ads/zzgvx;->zza:I

    add-int v5, v2, v4

    .line 140
    array-length v6, v3

    if-gt v5, v6, :cond_42

    .line 141
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzgxs;->size()I

    move-result v6

    div-int/lit8 v4, v4, 0x4

    add-int/2addr v6, v4

    invoke-virtual {v10, v6}, Lcom/google/android/gms/internal/ads/zzgxs;->zzj(I)V

    :goto_2b
    if-ge v2, v5, :cond_40

    .line 142
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/zzgvy;->zzb([BI)I

    move-result v4

    invoke-virtual {v10, v4}, Lcom/google/android/gms/internal/ads/zzgxs;->zzi(I)V

    add-int/lit8 v2, v2, 0x4

    goto :goto_2b

    :cond_40
    if-ne v2, v5, :cond_41

    goto :goto_27

    .line 287
    :cond_41
    new-instance v2, Lcom/google/android/gms/internal/ads/zzgyg;

    .line 290
    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzgyg;-><init>(Ljava/lang/String;)V

    .line 291
    throw v2

    .line 140
    :cond_42
    new-instance v2, Lcom/google/android/gms/internal/ads/zzgyg;

    .line 288
    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzgyg;-><init>(Ljava/lang/String;)V

    .line 289
    throw v2

    :cond_43
    const/4 v4, 0x5

    if-ne v5, v4, :cond_38

    add-int/lit8 v1, v15, 0x4

    .line 143
    sget v2, Lcom/google/android/gms/internal/ads/zzgvy;->zza:I

    .line 144
    check-cast v10, Lcom/google/android/gms/internal/ads/zzgxs;

    .line 145
    invoke-static {v3, v15}, Lcom/google/android/gms/internal/ads/zzgvy;->zzb([BI)I

    move-result v2

    invoke-virtual {v10, v2}, Lcom/google/android/gms/internal/ads/zzgxs;->zzi(I)V

    :goto_2c
    if-ge v1, v9, :cond_44

    .line 146
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/ads/zzgvy;->zzh([BILcom/google/android/gms/internal/ads/zzgvx;)I

    move-result v2

    iget v4, v7, Lcom/google/android/gms/internal/ads/zzgvx;->zza:I

    if-ne v12, v4, :cond_44

    .line 147
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/zzgvy;->zzb([BI)I

    move-result v1

    invoke-virtual {v10, v1}, Lcom/google/android/gms/internal/ads/zzgxs;->zzi(I)V

    add-int/lit8 v1, v2, 0x4

    goto :goto_2c

    :cond_44
    move v3, v1

    :goto_2d
    move-object v14, v7

    goto/16 :goto_1f

    :pswitch_15
    move v9, v7

    move-object v7, v14

    move/from16 v13, v20

    const/4 v4, 0x2

    if-ne v5, v4, :cond_48

    .line 148
    sget v2, Lcom/google/android/gms/internal/ads/zzgvy;->zza:I

    .line 149
    check-cast v10, Lcom/google/android/gms/internal/ads/zzgyr;

    .line 150
    invoke-static {v3, v15, v7}, Lcom/google/android/gms/internal/ads/zzgvy;->zzh([BILcom/google/android/gms/internal/ads/zzgvx;)I

    move-result v2

    iget v4, v7, Lcom/google/android/gms/internal/ads/zzgvx;->zza:I

    add-int v5, v2, v4

    .line 151
    array-length v6, v3

    if-gt v5, v6, :cond_47

    .line 152
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzgyr;->size()I

    move-result v6

    div-int/lit8 v4, v4, 0x8

    add-int/2addr v6, v4

    invoke-virtual {v10, v6}, Lcom/google/android/gms/internal/ads/zzgyr;->zzi(I)V

    :goto_2e
    if-ge v2, v5, :cond_45

    move/from16 v20, v13

    .line 153
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/zzgvy;->zzn([BI)J

    move-result-wide v13

    invoke-virtual {v10, v13, v14}, Lcom/google/android/gms/internal/ads/zzgyr;->zzg(J)V

    add-int/lit8 v2, v2, 0x8

    move/from16 v13, v20

    goto :goto_2e

    :cond_45
    move/from16 v20, v13

    if-ne v2, v5, :cond_46

    move v3, v2

    goto :goto_30

    .line 291
    :cond_46
    new-instance v2, Lcom/google/android/gms/internal/ads/zzgyg;

    .line 294
    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzgyg;-><init>(Ljava/lang/String;)V

    .line 295
    throw v2

    .line 151
    :cond_47
    new-instance v2, Lcom/google/android/gms/internal/ads/zzgyg;

    .line 292
    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzgyg;-><init>(Ljava/lang/String;)V

    .line 293
    throw v2

    :cond_48
    move/from16 v20, v13

    const/4 v4, 0x1

    if-ne v5, v4, :cond_4b

    add-int/lit8 v1, v15, 0x8

    .line 154
    sget v2, Lcom/google/android/gms/internal/ads/zzgvy;->zza:I

    .line 155
    check-cast v10, Lcom/google/android/gms/internal/ads/zzgyr;

    .line 156
    invoke-static {v3, v15}, Lcom/google/android/gms/internal/ads/zzgvy;->zzn([BI)J

    move-result-wide v4

    invoke-virtual {v10, v4, v5}, Lcom/google/android/gms/internal/ads/zzgyr;->zzg(J)V

    :goto_2f
    if-ge v1, v9, :cond_49

    .line 157
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/ads/zzgvy;->zzh([BILcom/google/android/gms/internal/ads/zzgvx;)I

    move-result v2

    iget v4, v7, Lcom/google/android/gms/internal/ads/zzgvx;->zza:I

    if-ne v12, v4, :cond_49

    .line 158
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/zzgvy;->zzn([BI)J

    move-result-wide v4

    invoke-virtual {v10, v4, v5}, Lcom/google/android/gms/internal/ads/zzgyr;->zzg(J)V

    add-int/lit8 v1, v2, 0x8

    goto :goto_2f

    :pswitch_16
    move v9, v7

    move-object v7, v14

    const/4 v4, 0x2

    if-ne v5, v4, :cond_4a

    .line 159
    invoke-static {v3, v15, v10, v7}, Lcom/google/android/gms/internal/ads/zzgvy;->zzf([BILcom/google/android/gms/internal/ads/zzgyd;Lcom/google/android/gms/internal/ads/zzgvx;)I

    move-result v1

    :cond_49
    move v3, v1

    :goto_30
    move-object v14, v7

    goto/16 :goto_3b

    :cond_4a
    if-nez v5, :cond_4b

    move-object v2, v3

    move-object v6, v7

    move v4, v9

    move-object v5, v10

    move v1, v12

    move v3, v15

    .line 160
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzgvy;->zzj(I[BIILcom/google/android/gms/internal/ads/zzgyd;Lcom/google/android/gms/internal/ads/zzgvx;)I

    move-result v5

    move-object v3, v2

    move v3, v5

    :goto_31
    move-object v14, v6

    goto/16 :goto_3b

    :cond_4b
    move-object v14, v7

    goto/16 :goto_3a

    :pswitch_17
    move v9, v7

    move-object v6, v14

    const/4 v4, 0x2

    if-ne v5, v4, :cond_4e

    .line 161
    sget v2, Lcom/google/android/gms/internal/ads/zzgvy;->zza:I

    .line 162
    check-cast v10, Lcom/google/android/gms/internal/ads/zzgyr;

    .line 163
    invoke-static {v3, v15, v6}, Lcom/google/android/gms/internal/ads/zzgvy;->zzh([BILcom/google/android/gms/internal/ads/zzgvx;)I

    move-result v2

    iget v4, v6, Lcom/google/android/gms/internal/ads/zzgvx;->zza:I

    add-int/2addr v4, v2

    :goto_32
    if-ge v2, v4, :cond_4c

    .line 164
    invoke-static {v3, v2, v6}, Lcom/google/android/gms/internal/ads/zzgvy;->zzk([BILcom/google/android/gms/internal/ads/zzgvx;)I

    move-result v2

    iget-wide v7, v6, Lcom/google/android/gms/internal/ads/zzgvx;->zzb:J

    .line 165
    invoke-virtual {v10, v7, v8}, Lcom/google/android/gms/internal/ads/zzgyr;->zzg(J)V

    goto :goto_32

    :cond_4c
    if-ne v2, v4, :cond_4d

    :goto_33
    move v3, v2

    goto :goto_31

    .line 295
    :cond_4d
    new-instance v2, Lcom/google/android/gms/internal/ads/zzgyg;

    .line 296
    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzgyg;-><init>(Ljava/lang/String;)V

    .line 297
    throw v2

    :cond_4e
    if-nez v5, :cond_59

    .line 166
    sget v1, Lcom/google/android/gms/internal/ads/zzgvy;->zza:I

    .line 167
    check-cast v10, Lcom/google/android/gms/internal/ads/zzgyr;

    .line 168
    invoke-static {v3, v15, v6}, Lcom/google/android/gms/internal/ads/zzgvy;->zzk([BILcom/google/android/gms/internal/ads/zzgvx;)I

    move-result v1

    iget-wide v4, v6, Lcom/google/android/gms/internal/ads/zzgvx;->zzb:J

    .line 169
    invoke-virtual {v10, v4, v5}, Lcom/google/android/gms/internal/ads/zzgyr;->zzg(J)V

    :goto_34
    if-ge v1, v9, :cond_57

    .line 170
    invoke-static {v3, v1, v6}, Lcom/google/android/gms/internal/ads/zzgvy;->zzh([BILcom/google/android/gms/internal/ads/zzgvx;)I

    move-result v2

    iget v4, v6, Lcom/google/android/gms/internal/ads/zzgvx;->zza:I

    if-ne v12, v4, :cond_57

    .line 171
    invoke-static {v3, v2, v6}, Lcom/google/android/gms/internal/ads/zzgvy;->zzk([BILcom/google/android/gms/internal/ads/zzgvx;)I

    move-result v1

    iget-wide v4, v6, Lcom/google/android/gms/internal/ads/zzgvx;->zzb:J

    .line 172
    invoke-virtual {v10, v4, v5}, Lcom/google/android/gms/internal/ads/zzgyr;->zzg(J)V

    goto :goto_34

    :pswitch_18
    move v9, v7

    move-object v6, v14

    const/4 v4, 0x2

    if-ne v5, v4, :cond_52

    .line 173
    sget v2, Lcom/google/android/gms/internal/ads/zzgvy;->zza:I

    .line 174
    check-cast v10, Lcom/google/android/gms/internal/ads/zzgxi;

    .line 175
    invoke-static {v3, v15, v6}, Lcom/google/android/gms/internal/ads/zzgvy;->zzh([BILcom/google/android/gms/internal/ads/zzgvx;)I

    move-result v2

    iget v4, v6, Lcom/google/android/gms/internal/ads/zzgvx;->zza:I

    add-int v5, v2, v4

    .line 176
    array-length v7, v3

    if-gt v5, v7, :cond_51

    .line 177
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzgxi;->size()I

    move-result v7

    div-int/lit8 v4, v4, 0x4

    add-int/2addr v7, v4

    invoke-virtual {v10, v7}, Lcom/google/android/gms/internal/ads/zzgxi;->zzi(I)V

    :goto_35
    if-ge v2, v5, :cond_4f

    .line 178
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/zzgvy;->zzb([BI)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    .line 179
    invoke-virtual {v10, v4}, Lcom/google/android/gms/internal/ads/zzgxi;->zzh(F)V

    add-int/lit8 v2, v2, 0x4

    goto :goto_35

    :cond_4f
    if-ne v2, v5, :cond_50

    goto :goto_33

    .line 297
    :cond_50
    new-instance v2, Lcom/google/android/gms/internal/ads/zzgyg;

    .line 300
    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzgyg;-><init>(Ljava/lang/String;)V

    .line 301
    throw v2

    .line 176
    :cond_51
    new-instance v2, Lcom/google/android/gms/internal/ads/zzgyg;

    .line 298
    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzgyg;-><init>(Ljava/lang/String;)V

    .line 299
    throw v2

    :cond_52
    const/4 v4, 0x5

    if-ne v5, v4, :cond_59

    add-int/lit8 v1, v15, 0x4

    .line 180
    sget v2, Lcom/google/android/gms/internal/ads/zzgvy;->zza:I

    .line 181
    check-cast v10, Lcom/google/android/gms/internal/ads/zzgxi;

    .line 182
    invoke-static {v3, v15}, Lcom/google/android/gms/internal/ads/zzgvy;->zzb([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    .line 183
    invoke-virtual {v10, v2}, Lcom/google/android/gms/internal/ads/zzgxi;->zzh(F)V

    :goto_36
    if-ge v1, v9, :cond_57

    .line 184
    invoke-static {v3, v1, v6}, Lcom/google/android/gms/internal/ads/zzgvy;->zzh([BILcom/google/android/gms/internal/ads/zzgvx;)I

    move-result v2

    iget v4, v6, Lcom/google/android/gms/internal/ads/zzgvx;->zza:I

    if-ne v12, v4, :cond_57

    .line 185
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/zzgvy;->zzb([BI)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    .line 186
    invoke-virtual {v10, v1}, Lcom/google/android/gms/internal/ads/zzgxi;->zzh(F)V

    add-int/lit8 v1, v2, 0x4

    goto :goto_36

    :pswitch_19
    move v9, v7

    move-object v6, v14

    const/4 v4, 0x2

    if-ne v5, v4, :cond_56

    .line 187
    sget v2, Lcom/google/android/gms/internal/ads/zzgvy;->zza:I

    .line 188
    check-cast v10, Lcom/google/android/gms/internal/ads/zzgwy;

    .line 189
    invoke-static {v3, v15, v6}, Lcom/google/android/gms/internal/ads/zzgvy;->zzh([BILcom/google/android/gms/internal/ads/zzgvx;)I

    move-result v2

    iget v4, v6, Lcom/google/android/gms/internal/ads/zzgvx;->zza:I

    add-int v5, v2, v4

    .line 190
    array-length v7, v3

    if-gt v5, v7, :cond_55

    .line 191
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzgwy;->size()I

    move-result v7

    div-int/lit8 v4, v4, 0x8

    add-int/2addr v7, v4

    invoke-virtual {v10, v7}, Lcom/google/android/gms/internal/ads/zzgwy;->zzi(I)V

    :goto_37
    if-ge v2, v5, :cond_53

    .line 192
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/zzgvy;->zzn([BI)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v7

    .line 193
    invoke-virtual {v10, v7, v8}, Lcom/google/android/gms/internal/ads/zzgwy;->zzh(D)V

    add-int/lit8 v2, v2, 0x8

    goto :goto_37

    :cond_53
    if-ne v2, v5, :cond_54

    goto/16 :goto_33

    .line 325
    :cond_54
    new-instance v2, Lcom/google/android/gms/internal/ads/zzgyg;

    .line 304
    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzgyg;-><init>(Ljava/lang/String;)V

    .line 305
    throw v2

    .line 190
    :cond_55
    new-instance v2, Lcom/google/android/gms/internal/ads/zzgyg;

    .line 302
    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzgyg;-><init>(Ljava/lang/String;)V

    .line 303
    throw v2

    :cond_56
    const/4 v4, 0x1

    if-ne v5, v4, :cond_59

    add-int/lit8 v1, v15, 0x8

    .line 194
    sget v2, Lcom/google/android/gms/internal/ads/zzgvy;->zza:I

    .line 195
    check-cast v10, Lcom/google/android/gms/internal/ads/zzgwy;

    .line 196
    invoke-static {v3, v15}, Lcom/google/android/gms/internal/ads/zzgvy;->zzn([BI)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    .line 197
    invoke-virtual {v10, v4, v5}, Lcom/google/android/gms/internal/ads/zzgwy;->zzh(D)V

    :goto_38
    if-ge v1, v9, :cond_57

    .line 198
    invoke-static {v3, v1, v6}, Lcom/google/android/gms/internal/ads/zzgvy;->zzh([BILcom/google/android/gms/internal/ads/zzgvx;)I

    move-result v2

    iget v4, v6, Lcom/google/android/gms/internal/ads/zzgvx;->zza:I

    if-ne v12, v4, :cond_57

    .line 199
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/zzgvy;->zzn([BI)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    .line 200
    invoke-virtual {v10, v4, v5}, Lcom/google/android/gms/internal/ads/zzgwy;->zzh(D)V

    add-int/lit8 v1, v2, 0x8

    goto :goto_38

    :cond_57
    move v3, v1

    goto/16 :goto_31

    :goto_39
    if-ge v7, v4, :cond_58

    move-object/from16 v2, p2

    .line 63
    invoke-static {v2, v7, v6}, Lcom/google/android/gms/internal/ads/zzgvy;->zzh([BILcom/google/android/gms/internal/ads/zzgvx;)I

    move-result v3

    iget v8, v6, Lcom/google/android/gms/internal/ads/zzgvx;->zza:I

    if-ne v12, v8, :cond_58

    .line 64
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzgvy;->zzc(Lcom/google/android/gms/internal/ads/zzgzv;[BIIILcom/google/android/gms/internal/ads/zzgvx;)I

    move-result v7

    move-object v14, v6

    iget-object v2, v14, Lcom/google/android/gms/internal/ads/zzgvx;->zzc:Ljava/lang/Object;

    .line 65
    invoke-interface {v10, v2}, Lcom/google/android/gms/internal/ads/zzgyd;->add(Ljava/lang/Object;)Z

    move/from16 v4, p4

    goto :goto_39

    :cond_58
    move-object v14, v6

    goto/16 :goto_1c

    :cond_59
    move-object v14, v6

    :cond_5a
    :goto_3a
    move v3, v15

    :goto_3b
    if-eq v3, v15, :cond_5b

    move-object/from16 v2, p1

    move-object/from16 v7, p2

    move/from16 v8, p4

    move v5, v11

    move v6, v12

    move-object v10, v14

    move/from16 v14, v18

    move/from16 v15, v19

    move/from16 v4, v20

    goto/16 :goto_46

    :cond_5b
    move-object/from16 v13, p1

    move/from16 v9, p5

    move v4, v3

    move-object v15, v14

    move/from16 v14, v18

    move/from16 v7, v20

    goto/16 :goto_13

    :cond_5c
    move/from16 v29, v4

    move-object v4, v9

    move/from16 v10, v27

    const/16 v3, 0x32

    move/from16 v7, v29

    if-ne v7, v3, :cond_5f

    const/4 v3, 0x2

    if-ne v5, v3, :cond_5e

    .line 186
    sget-object v3, Lcom/google/android/gms/internal/ads/zzgzf;->zzb:Lsun/misc/Unsafe;

    .line 306
    invoke-direct {v0, v11}, Lcom/google/android/gms/internal/ads/zzgzf;->zzz(I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v13, p1

    .line 307
    invoke-virtual {v3, v13, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 308
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgyx;->zza(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5d

    .line 309
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgyw;->zza()Lcom/google/android/gms/internal/ads/zzgyw;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzgyw;->zzb()Lcom/google/android/gms/internal/ads/zzgyw;

    move-result-object v6

    .line 310
    invoke-static {v6, v5}, Lcom/google/android/gms/internal/ads/zzgyx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    invoke-virtual {v3, v13, v1, v2, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 312
    :cond_5d
    check-cast v4, Lcom/google/android/gms/internal/ads/zzgyv;

    .line 313
    throw v17

    :cond_5e
    move-object/from16 v13, p1

    :goto_3c
    move-object/from16 v3, p2

    move/from16 v9, p5

    move v4, v15

    move/from16 v7, v20

    move-object v15, v14

    move/from16 v14, v18

    goto/16 :goto_47

    :cond_5f
    move-object/from16 v13, p1

    add-int/lit8 v3, v11, 0x2

    sget-object v8, Lcom/google/android/gms/internal/ads/zzgzf;->zzb:Lsun/misc/Unsafe;

    .line 201
    aget v3, v21, v3

    const v16, 0xfffff

    and-int v3, v3, v16

    move/from16 v27, v10

    int-to-long v9, v3

    packed-switch v7, :pswitch_data_2

    :cond_60
    move-object/from16 v3, p2

    move/from16 v7, v20

    move/from16 v20, v11

    move v11, v15

    move-object v15, v14

    goto/16 :goto_44

    :pswitch_1a
    const/4 v3, 0x3

    if-ne v5, v3, :cond_60

    and-int/lit8 v1, v12, -0x8

    or-int/lit8 v6, v1, 0x4

    move/from16 v8, v20

    .line 202
    invoke-direct {v0, v13, v8, v11}, Lcom/google/android/gms/internal/ads/zzgzf;->zzB(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v1

    .line 203
    invoke-direct {v0, v11}, Lcom/google/android/gms/internal/ads/zzgzf;->zzx(I)Lcom/google/android/gms/internal/ads/zzgzv;

    move-result-object v2

    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object v7, v14

    move v4, v15

    .line 204
    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzgvy;->zzl(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzgzv;[BIIILcom/google/android/gms/internal/ads/zzgvx;)I

    move-result v2

    move-object v6, v7

    .line 205
    invoke-direct {v0, v13, v8, v11, v1}, Lcom/google/android/gms/internal/ads/zzgzf;->zzK(Ljava/lang/Object;IILjava/lang/Object;)V

    move-object v15, v6

    move v7, v8

    goto/16 :goto_40

    :pswitch_1b
    move-object/from16 v3, p2

    move-object v6, v14

    move v4, v15

    move/from16 v7, v20

    if-nez v5, :cond_63

    .line 206
    invoke-static {v3, v4, v6}, Lcom/google/android/gms/internal/ads/zzgvy;->zzk([BILcom/google/android/gms/internal/ads/zzgvx;)I

    move-result v5

    iget-wide v14, v6, Lcom/google/android/gms/internal/ads/zzgvx;->zzb:J

    .line 207
    invoke-static {v14, v15}, Lcom/google/android/gms/internal/ads/zzgwp;->zzF(J)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v8, v13, v1, v2, v14}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 208
    invoke-virtual {v8, v13, v9, v10, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_3e

    :pswitch_1c
    move-object/from16 v3, p2

    move-object v6, v14

    move v4, v15

    move/from16 v7, v20

    if-nez v5, :cond_63

    .line 209
    invoke-static {v3, v4, v6}, Lcom/google/android/gms/internal/ads/zzgvy;->zzh([BILcom/google/android/gms/internal/ads/zzgvx;)I

    move-result v5

    iget v14, v6, Lcom/google/android/gms/internal/ads/zzgvx;->zza:I

    .line 210
    invoke-static {v14}, Lcom/google/android/gms/internal/ads/zzgwp;->zzD(I)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v8, v13, v1, v2, v14}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 211
    invoke-virtual {v8, v13, v9, v10, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_3e

    :pswitch_1d
    move-object/from16 v3, p2

    move-object v6, v14

    move v4, v15

    move/from16 v7, v20

    if-nez v5, :cond_63

    .line 212
    invoke-static {v3, v4, v6}, Lcom/google/android/gms/internal/ads/zzgvy;->zzh([BILcom/google/android/gms/internal/ads/zzgvx;)I

    move-result v5

    iget v14, v6, Lcom/google/android/gms/internal/ads/zzgvx;->zza:I

    .line 213
    invoke-direct {v0, v11}, Lcom/google/android/gms/internal/ads/zzgzf;->zzw(I)Lcom/google/android/gms/internal/ads/zzgxx;

    move-result-object v15

    if-eqz v15, :cond_62

    .line 214
    invoke-interface {v15, v14}, Lcom/google/android/gms/internal/ads/zzgxx;->zza(I)Z

    move-result v15

    if-eqz v15, :cond_61

    goto :goto_3d

    .line 217
    :cond_61
    invoke-static {v13}, Lcom/google/android/gms/internal/ads/zzgzf;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhai;

    move-result-object v1

    int-to-long v8, v14

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v12, v2}, Lcom/google/android/gms/internal/ads/zzhai;->zzj(ILjava/lang/Object;)V

    goto :goto_3e

    .line 215
    :cond_62
    :goto_3d
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v8, v13, v1, v2, v14}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 216
    invoke-virtual {v8, v13, v9, v10, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_3e

    :pswitch_1e
    move-object/from16 v3, p2

    move-object v6, v14

    move v4, v15

    move/from16 v7, v20

    const/4 v14, 0x2

    if-ne v5, v14, :cond_63

    .line 218
    invoke-static {v3, v4, v6}, Lcom/google/android/gms/internal/ads/zzgvy;->zza([BILcom/google/android/gms/internal/ads/zzgvx;)I

    move-result v5

    iget-object v14, v6, Lcom/google/android/gms/internal/ads/zzgvx;->zzc:Ljava/lang/Object;

    .line 219
    invoke-virtual {v8, v13, v1, v2, v14}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 220
    invoke-virtual {v8, v13, v9, v10, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_3e
    move-object v15, v6

    move/from16 v20, v11

    move v11, v4

    :goto_3f
    move v4, v5

    goto/16 :goto_45

    :pswitch_1f
    move-object/from16 v3, p2

    move-object v6, v14

    move v4, v15

    move/from16 v7, v20

    const/4 v14, 0x2

    if-ne v5, v14, :cond_63

    .line 221
    invoke-direct {v0, v13, v7, v11}, Lcom/google/android/gms/internal/ads/zzgzf;->zzB(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v1

    .line 222
    invoke-direct {v0, v11}, Lcom/google/android/gms/internal/ads/zzgzf;->zzx(I)Lcom/google/android/gms/internal/ads/zzgzv;

    move-result-object v2

    move/from16 v5, p4

    .line 223
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzgvy;->zzm(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzgzv;[BIILcom/google/android/gms/internal/ads/zzgvx;)I

    move-result v2

    move-object v15, v6

    .line 224
    invoke-direct {v0, v13, v7, v11, v1}, Lcom/google/android/gms/internal/ads/zzgzf;->zzK(Ljava/lang/Object;IILjava/lang/Object;)V

    :goto_40
    move/from16 v20, v11

    move v11, v4

    move v4, v2

    goto/16 :goto_45

    :cond_63
    move-object v15, v6

    move/from16 v20, v11

    move v11, v4

    goto/16 :goto_44

    :pswitch_20
    move-object/from16 v3, p2

    move/from16 v7, v20

    move/from16 v20, v11

    move v11, v15

    move-object v15, v14

    const/4 v14, 0x2

    if-ne v5, v14, :cond_68

    .line 225
    invoke-static {v3, v11, v15}, Lcom/google/android/gms/internal/ads/zzgvy;->zzh([BILcom/google/android/gms/internal/ads/zzgvx;)I

    move-result v5

    iget v14, v15, Lcom/google/android/gms/internal/ads/zzgvx;->zza:I

    if-nez v14, :cond_64

    .line 226
    invoke-virtual {v8, v13, v1, v2, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_42

    :cond_64
    add-int v6, v5, v14

    const/high16 v21, 0x20000000

    and-int v21, v27, v21

    if-eqz v21, :cond_66

    .line 227
    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/ads/zzhat;->zzi([BII)Z

    move-result v21

    if-eqz v21, :cond_65

    goto :goto_41

    .line 5
    :cond_65
    new-instance v1, Lcom/google/android/gms/internal/ads/zzgyg;

    .line 314
    invoke-direct {v1, v4}, Lcom/google/android/gms/internal/ads/zzgyg;-><init>(Ljava/lang/String;)V

    .line 315
    throw v1

    .line 227
    :cond_66
    :goto_41
    new-instance v4, Ljava/lang/String;

    move/from16 p3, v6

    .line 228
    sget-object v6, Lcom/google/android/gms/internal/ads/zzgye;->zza:Ljava/nio/charset/Charset;

    invoke-direct {v4, v3, v5, v14, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 229
    invoke-virtual {v8, v13, v1, v2, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move/from16 v5, p3

    .line 230
    :goto_42
    invoke-virtual {v8, v13, v9, v10, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_3f

    :pswitch_21
    move-object/from16 v3, p2

    move/from16 v7, v20

    move/from16 v20, v11

    move v11, v15

    move-object v15, v14

    if-nez v5, :cond_68

    .line 231
    invoke-static {v3, v11, v15}, Lcom/google/android/gms/internal/ads/zzgvy;->zzk([BILcom/google/android/gms/internal/ads/zzgvx;)I

    move-result v4

    iget-wide v5, v15, Lcom/google/android/gms/internal/ads/zzgvx;->zzb:J

    cmp-long v14, v5, v22

    if-eqz v14, :cond_67

    const/16 v26, 0x1

    goto :goto_43

    :cond_67
    const/16 v26, 0x0

    .line 232
    :goto_43
    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v8, v13, v1, v2, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 233
    invoke-virtual {v8, v13, v9, v10, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_45

    :pswitch_22
    move-object/from16 v3, p2

    move/from16 v7, v20

    const/4 v4, 0x5

    move/from16 v20, v11

    move v11, v15

    move-object v15, v14

    if-ne v5, v4, :cond_68

    add-int/lit8 v4, v11, 0x4

    .line 234
    invoke-static {v3, v11}, Lcom/google/android/gms/internal/ads/zzgvy;->zzb([BI)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v8, v13, v1, v2, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 235
    invoke-virtual {v8, v13, v9, v10, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_45

    :pswitch_23
    move-object/from16 v3, p2

    move/from16 v7, v20

    const/4 v4, 0x1

    move/from16 v20, v11

    move v11, v15

    move-object v15, v14

    if-ne v5, v4, :cond_68

    add-int/lit8 v4, v11, 0x8

    .line 236
    invoke-static {v3, v11}, Lcom/google/android/gms/internal/ads/zzgvy;->zzn([BI)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v8, v13, v1, v2, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 237
    invoke-virtual {v8, v13, v9, v10, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_45

    :pswitch_24
    move-object/from16 v3, p2

    move/from16 v7, v20

    move/from16 v20, v11

    move v11, v15

    move-object v15, v14

    if-nez v5, :cond_68

    .line 238
    invoke-static {v3, v11, v15}, Lcom/google/android/gms/internal/ads/zzgvy;->zzh([BILcom/google/android/gms/internal/ads/zzgvx;)I

    move-result v4

    iget v5, v15, Lcom/google/android/gms/internal/ads/zzgvx;->zza:I

    .line 239
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v8, v13, v1, v2, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 240
    invoke-virtual {v8, v13, v9, v10, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_45

    :pswitch_25
    move-object/from16 v3, p2

    move/from16 v7, v20

    move/from16 v20, v11

    move v11, v15

    move-object v15, v14

    if-nez v5, :cond_68

    .line 241
    invoke-static {v3, v11, v15}, Lcom/google/android/gms/internal/ads/zzgvy;->zzk([BILcom/google/android/gms/internal/ads/zzgvx;)I

    move-result v4

    iget-wide v5, v15, Lcom/google/android/gms/internal/ads/zzgvx;->zzb:J

    .line 242
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v8, v13, v1, v2, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 243
    invoke-virtual {v8, v13, v9, v10, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_45

    :pswitch_26
    move-object/from16 v3, p2

    move/from16 v7, v20

    const/4 v4, 0x5

    move/from16 v20, v11

    move v11, v15

    move-object v15, v14

    if-ne v5, v4, :cond_68

    add-int/lit8 v4, v11, 0x4

    .line 244
    invoke-static {v3, v11}, Lcom/google/android/gms/internal/ads/zzgvy;->zzb([BI)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    .line 245
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v8, v13, v1, v2, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 246
    invoke-virtual {v8, v13, v9, v10, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_45

    :pswitch_27
    move-object/from16 v3, p2

    move/from16 v7, v20

    const/4 v4, 0x1

    move/from16 v20, v11

    move v11, v15

    move-object v15, v14

    if-ne v5, v4, :cond_68

    add-int/lit8 v4, v11, 0x8

    .line 247
    invoke-static {v3, v11}, Lcom/google/android/gms/internal/ads/zzgvy;->zzn([BI)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v5

    .line 248
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v8, v13, v1, v2, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 249
    invoke-virtual {v8, v13, v9, v10, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_45

    :cond_68
    :goto_44
    move v4, v11

    :goto_45
    if-eq v4, v11, :cond_69

    move v1, v7

    move-object v7, v3

    move v3, v4

    move v4, v1

    move/from16 v8, p4

    move v6, v12

    move-object v2, v13

    move-object v10, v15

    move/from16 v14, v18

    move/from16 v15, v19

    move/from16 v5, v20

    :goto_46
    move-object/from16 v1, v24

    goto/16 :goto_11

    :cond_69
    move/from16 v9, p5

    move/from16 v14, v18

    move/from16 v11, v20

    :goto_47
    if-ne v12, v9, :cond_6a

    if-eqz v9, :cond_6a

    move/from16 v8, p4

    move v6, v4

    move/from16 v15, v19

    goto/16 :goto_49

    .line 323
    :cond_6a
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzgzf;->zzh:Z

    if-eqz v1, :cond_6c

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzgvx;->zzd:Lcom/google/android/gms/internal/ads/zzgxb;

    .line 250
    sget v2, Lcom/google/android/gms/internal/ads/zzgxb;->zzb:I

    .line 251
    sget v2, Lcom/google/android/gms/internal/ads/zzgzm;->zza:I

    sget-object v2, Lcom/google/android/gms/internal/ads/zzgxb;->zza:Lcom/google/android/gms/internal/ads/zzgxb;

    if-eq v1, v2, :cond_6c

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzgzf;->zzg:Lcom/google/android/gms/internal/ads/zzgzc;

    iget-object v2, v15, Lcom/google/android/gms/internal/ads/zzgvx;->zzd:Lcom/google/android/gms/internal/ads/zzgxb;

    .line 254
    sget v5, Lcom/google/android/gms/internal/ads/zzgvy;->zza:I

    .line 255
    invoke-virtual {v2, v1, v7}, Lcom/google/android/gms/internal/ads/zzgxb;->zzc(Lcom/google/android/gms/internal/ads/zzgzc;I)Lcom/google/android/gms/internal/ads/zzgxp;

    move-result-object v1

    if-nez v1, :cond_6b

    .line 256
    invoke-static {v13}, Lcom/google/android/gms/internal/ads/zzgzf;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhai;

    move-result-object v5

    move-object v2, v3

    move v3, v4

    move v1, v12

    move-object v6, v15

    move/from16 v4, p4

    .line 257
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzgvy;->zzg(I[BIILcom/google/android/gms/internal/ads/zzhai;Lcom/google/android/gms/internal/ads/zzgvx;)I

    move-result v3

    move/from16 v8, p4

    goto :goto_48

    .line 324
    :cond_6b
    move-object v1, v13

    check-cast v1, Lcom/google/android/gms/internal/ads/zzgxn;

    .line 325
    throw v17

    :cond_6c
    move v3, v4

    .line 252
    invoke-static {v13}, Lcom/google/android/gms/internal/ads/zzgzf;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhai;

    move-result-object v5

    move-object/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v6, p6

    move v1, v12

    .line 253
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzgvy;->zzg(I[BIILcom/google/android/gms/internal/ads/zzhai;Lcom/google/android/gms/internal/ads/zzgvx;)I

    move-result v3

    move v8, v4

    :goto_48
    move-object/from16 v10, p6

    move v4, v7

    move v5, v11

    move v6, v12

    move-object v2, v13

    move/from16 v15, v19

    move-object/from16 v1, v24

    const/4 v12, -0x1

    move-object/from16 v7, p2

    goto/16 :goto_0

    :cond_6d
    move/from16 v9, p5

    move-object/from16 v24, v1

    move-object v13, v2

    move/from16 v18, v14

    move/from16 v19, v15

    move v12, v6

    move v6, v3

    :goto_49
    const v1, 0xfffff

    if-eq v14, v1, :cond_6e

    int-to-long v1, v14

    move-object/from16 v4, v24

    .line 316
    invoke-virtual {v4, v13, v1, v2, v15}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_6e
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzgzf;->zzk:I

    move v7, v1

    :goto_4a
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzgzf;->zzl:I

    if-ge v7, v1, :cond_6f

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzgzf;->zzj:[I

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzgzf;->zzm:Lcom/google/android/gms/internal/ads/zzhah;

    .line 317
    aget v2, v1, v7

    const/4 v3, 0x0

    move-object/from16 v5, p1

    move-object v1, v13

    .line 318
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgzf;->zzy(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzhah;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/ads/zzhai;

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    move-object/from16 v13, p1

    goto :goto_4a

    .line 319
    :cond_6f
    const-string v0, "Failed to parse the message."

    if-nez v9, :cond_71

    if-ne v6, v8, :cond_70

    goto :goto_4b

    :cond_70
    new-instance v1, Lcom/google/android/gms/internal/ads/zzgyg;

    .line 320
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzgyg;-><init>(Ljava/lang/String;)V

    .line 321
    throw v1

    :cond_71
    if-gt v6, v8, :cond_72

    if-ne v12, v9, :cond_72

    :goto_4b
    return v6

    :cond_72
    new-instance v1, Lcom/google/android/gms/internal/ads/zzgyg;

    .line 322
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzgyg;-><init>(Ljava/lang/String;)V

    .line 323
    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x12
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_16
        :pswitch_f
        :pswitch_14
        :pswitch_15
        :pswitch_e
        :pswitch_d
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_16
        :pswitch_f
        :pswitch_14
        :pswitch_15
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x33
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_24
        :pswitch_1d
        :pswitch_22
        :pswitch_23
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
    .end packed-switch
.end method

.method public final zze()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzf;->zzg:Lcom/google/android/gms/internal/ads/zzgzc;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgxr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxr;->zzbj()Lcom/google/android/gms/internal/ads/zzgxr;

    move-result-object v0

    return-object v0
.end method

.method public final zzf(Ljava/lang/Object;)V
    .locals 7

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgzf;->zzQ(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzgxr;

    if-eqz v0, :cond_1

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgxr;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxr;->zzbT()V

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxr;->zzbS()V

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxr;->zzbV()V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzf;->zzc:[I

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_5

    .line 6
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzgzf;->zzu(I)I

    move-result v2

    const v3, 0xfffff

    and-int/2addr v3, v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgzf;->zzt(I)I

    move-result v2

    int-to-long v3, v3

    const/16 v5, 0x9

    if-eq v2, v5, :cond_3

    const/16 v5, 0x3c

    if-eq v2, v5, :cond_2

    const/16 v5, 0x44

    if-eq v2, v5, :cond_2

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 11
    :pswitch_0
    sget-object v2, Lcom/google/android/gms/internal/ads/zzgzf;->zzb:Lsun/misc/Unsafe;

    .line 12
    invoke-virtual {v2, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 13
    move-object v6, v5

    check-cast v6, Lcom/google/android/gms/internal/ads/zzgyw;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzgyw;->zzc()V

    .line 14
    invoke-virtual {v2, p1, v3, v4, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_1

    .line 7
    :pswitch_1
    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/ads/zzhao;->zzh(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzgyd;

    .line 8
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzgyd;->zzb()V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgzf;->zzc:[I

    .line 9
    aget v2, v2, v1

    .line 10
    invoke-direct {p0, p1, v2, v1}, Lcom/google/android/gms/internal/ads/zzgzf;->zzR(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 11
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzgzf;->zzx(I)Lcom/google/android/gms/internal/ads/zzgzv;

    move-result-object v2

    sget-object v5, Lcom/google/android/gms/internal/ads/zzgzf;->zzb:Lsun/misc/Unsafe;

    invoke-virtual {v5, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzgzv;->zzf(Ljava/lang/Object;)V

    goto :goto_1

    .line 15
    :cond_3
    :pswitch_2
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzgzf;->zzN(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 16
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzgzf;->zzx(I)Lcom/google/android/gms/internal/ads/zzgzv;

    move-result-object v2

    sget-object v5, Lcom/google/android/gms/internal/ads/zzgzf;->zzb:Lsun/misc/Unsafe;

    invoke-virtual {v5, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzgzv;->zzf(Ljava/lang/Object;)V

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzf;->zzm:Lcom/google/android/gms/internal/ads/zzhah;

    .line 17
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzhah;->zzi(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgzf;->zzh:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzf;->zzn:Lcom/google/android/gms/internal/ads/zzgxc;

    .line 18
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgxc;->zza(Ljava/lang/Object;)V

    :cond_6
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzg(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgzf;->zzD(Ljava/lang/Object;)V

    .line 76
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgzf;->zzc:[I

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgzf;->zzu(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v2, v1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzgzf;->zzc:[I

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgzf;->zzt(I)I

    move-result v1

    .line 3
    aget v3, v3, v0

    int-to-long v4, v2

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_2

    .line 12
    :pswitch_0
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzgzf;->zzF(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 13
    :pswitch_1
    invoke-direct {p0, p2, v3, v0}, Lcom/google/android/gms/internal/ads/zzgzf;->zzR(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 14
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzhao;->zzh(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/ads/zzhao;->zzv(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 15
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/ads/zzgzf;->zzI(Ljava/lang/Object;II)V

    goto/16 :goto_2

    .line 16
    :pswitch_2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzgzf;->zzF(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 17
    :pswitch_3
    invoke-direct {p0, p2, v3, v0}, Lcom/google/android/gms/internal/ads/zzgzf;->zzR(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 18
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzhao;->zzh(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/ads/zzhao;->zzv(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 19
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/ads/zzgzf;->zzI(Ljava/lang/Object;II)V

    goto/16 :goto_2

    .line 20
    :pswitch_4
    sget v1, Lcom/google/android/gms/internal/ads/zzgzx;->zza:I

    .line 21
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhao;->zzh(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzhao;->zzh(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 22
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzgyx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 23
    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/ads/zzhao;->zzv(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_2

    .line 4
    :pswitch_5
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhao;->zzh(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzgyd;

    .line 5
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzhao;->zzh(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzgyd;

    .line 6
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzgyd;->size()I

    move-result v3

    .line 7
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzgyd;->size()I

    move-result v6

    if-lez v3, :cond_1

    if-lez v6, :cond_1

    .line 8
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzgyd;->zzc()Z

    move-result v7

    if-nez v7, :cond_0

    add-int/2addr v6, v3

    .line 9
    invoke-interface {v1, v6}, Lcom/google/android/gms/internal/ads/zzgyd;->zzf(I)Lcom/google/android/gms/internal/ads/zzgyd;

    move-result-object v1

    .line 10
    :cond_0
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzgyd;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-gtz v3, :cond_2

    goto :goto_1

    :cond_2
    move-object v2, v1

    .line 11
    :goto_1
    invoke-static {p1, v4, v5, v2}, Lcom/google/android/gms/internal/ads/zzhao;->zzv(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_2

    .line 24
    :pswitch_6
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzgzf;->zzE(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 25
    :pswitch_7
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzgzf;->zzN(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 26
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzhao;->zzf(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v4, v5, v1, v2}, Lcom/google/android/gms/internal/ads/zzhao;->zzu(Ljava/lang/Object;JJ)V

    .line 27
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzgzf;->zzH(Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 28
    :pswitch_8
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzgzf;->zzN(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 29
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzhao;->zzd(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/ads/zzhao;->zzt(Ljava/lang/Object;JI)V

    .line 30
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzgzf;->zzH(Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 31
    :pswitch_9
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzgzf;->zzN(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 32
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzhao;->zzf(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v4, v5, v1, v2}, Lcom/google/android/gms/internal/ads/zzhao;->zzu(Ljava/lang/Object;JJ)V

    .line 33
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzgzf;->zzH(Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 34
    :pswitch_a
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzgzf;->zzN(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 35
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzhao;->zzd(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/ads/zzhao;->zzt(Ljava/lang/Object;JI)V

    .line 36
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzgzf;->zzH(Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 37
    :pswitch_b
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzgzf;->zzN(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 38
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzhao;->zzd(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/ads/zzhao;->zzt(Ljava/lang/Object;JI)V

    .line 39
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzgzf;->zzH(Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 40
    :pswitch_c
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzgzf;->zzN(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 41
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzhao;->zzd(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/ads/zzhao;->zzt(Ljava/lang/Object;JI)V

    .line 42
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzgzf;->zzH(Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 43
    :pswitch_d
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzgzf;->zzN(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 44
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzhao;->zzh(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/ads/zzhao;->zzv(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 45
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzgzf;->zzH(Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 46
    :pswitch_e
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzgzf;->zzE(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 47
    :pswitch_f
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzgzf;->zzN(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 48
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzhao;->zzh(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/ads/zzhao;->zzv(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 49
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzgzf;->zzH(Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 50
    :pswitch_10
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzgzf;->zzN(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 51
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzhao;->zzz(Ljava/lang/Object;J)Z

    move-result v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/ads/zzhao;->zzp(Ljava/lang/Object;JZ)V

    .line 52
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzgzf;->zzH(Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 53
    :pswitch_11
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzgzf;->zzN(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 54
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzhao;->zzd(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/ads/zzhao;->zzt(Ljava/lang/Object;JI)V

    .line 55
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzgzf;->zzH(Ljava/lang/Object;I)V

    goto :goto_2

    .line 56
    :pswitch_12
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzgzf;->zzN(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 57
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzhao;->zzf(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v4, v5, v1, v2}, Lcom/google/android/gms/internal/ads/zzhao;->zzu(Ljava/lang/Object;JJ)V

    .line 58
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzgzf;->zzH(Ljava/lang/Object;I)V

    goto :goto_2

    .line 59
    :pswitch_13
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzgzf;->zzN(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 60
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzhao;->zzd(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/ads/zzhao;->zzt(Ljava/lang/Object;JI)V

    .line 61
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzgzf;->zzH(Ljava/lang/Object;I)V

    goto :goto_2

    .line 62
    :pswitch_14
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzgzf;->zzN(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 63
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzhao;->zzf(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v4, v5, v1, v2}, Lcom/google/android/gms/internal/ads/zzhao;->zzu(Ljava/lang/Object;JJ)V

    .line 64
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzgzf;->zzH(Ljava/lang/Object;I)V

    goto :goto_2

    .line 65
    :pswitch_15
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzgzf;->zzN(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 66
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzhao;->zzf(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v4, v5, v1, v2}, Lcom/google/android/gms/internal/ads/zzhao;->zzu(Ljava/lang/Object;JJ)V

    .line 67
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzgzf;->zzH(Ljava/lang/Object;I)V

    goto :goto_2

    .line 68
    :pswitch_16
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzgzf;->zzN(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 69
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzhao;->zzc(Ljava/lang/Object;J)F

    move-result v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/ads/zzhao;->zzs(Ljava/lang/Object;JF)V

    .line 70
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzgzf;->zzH(Ljava/lang/Object;I)V

    goto :goto_2

    .line 71
    :pswitch_17
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzgzf;->zzN(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 72
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzhao;->zzb(Ljava/lang/Object;J)D

    move-result-wide v1

    invoke-static {p1, v4, v5, v1, v2}, Lcom/google/android/gms/internal/ads/zzhao;->zzr(Ljava/lang/Object;JD)V

    .line 73
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzgzf;->zzH(Ljava/lang/Object;I)V

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzf;->zzm:Lcom/google/android/gms/internal/ads/zzhah;

    .line 74
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgzx;->zzq(Lcom/google/android/gms/internal/ads/zzhah;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgzf;->zzh:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzf;->zzn:Lcom/google/android/gms/internal/ads/zzgxc;

    .line 75
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgzx;->zzp(Lcom/google/android/gms/internal/ads/zzgxc;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzh(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzgzp;Lcom/google/android/gms/internal/ads/zzgxb;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgzf;->zzD(Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzgzf;->zzm:Lcom/google/android/gms/internal/ads/zzhah;

    const/4 v0, 0x0

    move-object v4, v0

    .line 3
    :goto_0
    :try_start_0
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzgzp;->zzc()I

    move-result v2

    .line 4
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzgzf;->zzq(I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    const/4 v7, 0x0

    if-gez v1, :cond_7

    const v1, 0x7fffffff

    if-ne v2, v1, :cond_1

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzgzf;->zzk:I

    :goto_1
    iget p3, p0, Lcom/google/android/gms/internal/ads/zzgzf;->zzl:I

    if-ge p2, p3, :cond_0

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzgzf;->zzj:[I

    .line 198
    aget v3, p3, p2

    move-object v6, p1

    move-object v1, p0

    move-object v2, p1

    .line 199
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzgzf;->zzy(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzhah;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v5

    move-object v5, v4

    add-int/lit8 p2, p2, 0x1

    move-object v5, v6

    goto :goto_1

    :cond_0
    move-object v6, v5

    move-object v5, v4

    move-object v2, p1

    move-object v5, v6

    move-object p1, p0

    goto/16 :goto_15

    :cond_1
    move-object v1, p0

    move-object v6, v5

    move-object v5, v4

    .line 202
    :try_start_1
    iget-boolean v3, v1, Lcom/google/android/gms/internal/ads/zzgzf;->zzh:Z

    if-nez v3, :cond_2

    move-object v2, v0

    goto :goto_2

    .line 199
    :cond_2
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzgzf;->zzg:Lcom/google/android/gms/internal/ads/zzgzc;

    .line 5
    invoke-virtual {p3, v3, v2}, Lcom/google/android/gms/internal/ads/zzgxb;->zzc(Lcom/google/android/gms/internal/ads/zzgzc;I)Lcom/google/android/gms/internal/ads/zzgxp;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :goto_2
    if-nez v2, :cond_6

    if-nez v5, :cond_3

    .line 6
    :try_start_2
    invoke-virtual {v6, p1}, Lcom/google/android/gms/internal/ads/zzhah;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object p2, v0

    move-object v2, p1

    move-object p1, v1

    goto :goto_7

    :cond_3
    move-object v4, v5

    .line 7
    :goto_3
    :try_start_3
    invoke-virtual {v6, v4, p2, v7}, Lcom/google/android/gms/internal/ads/zzhah;->zzk(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzgzp;I)Z

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v2, :cond_5

    iget p2, v1, Lcom/google/android/gms/internal/ads/zzgzf;->zzk:I

    :goto_4
    iget p3, v1, Lcom/google/android/gms/internal/ads/zzgzf;->zzl:I

    if-ge p2, p3, :cond_4

    iget-object p3, v1, Lcom/google/android/gms/internal/ads/zzgzf;->zzj:[I

    .line 198
    aget v3, p3, p2

    move-object v5, v6

    move-object v6, p1

    move-object v2, p1

    .line 199
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzgzf;->zzy(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzhah;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, v1

    move-object v3, v2

    move-object v6, v5

    add-int/lit8 p2, p2, 0x1

    move-object p1, v3

    goto :goto_4

    :cond_4
    move-object v3, p1

    move-object p1, v1

    move-object v2, v3

    move-object v5, v6

    goto/16 :goto_15

    :cond_5
    move-object v3, p1

    move-object p1, v1

    :goto_5
    move-object p1, v3

    move-object v5, v6

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v3, p1

    move-object p1, v1

    move-object p2, v0

    move-object v2, v3

    move-object v5, v6

    goto/16 :goto_19

    :cond_6
    move-object v3, p1

    move-object p1, v1

    .line 200
    :try_start_4
    move-object p2, v3

    check-cast p2, Lcom/google/android/gms/internal/ads/zzgxn;

    .line 201
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_2
    move-exception v0

    move-object v3, p1

    move-object p1, v1

    :goto_6
    move-object p2, v0

    move-object v2, v3

    :goto_7
    move-object v1, v5

    move-object v5, v6

    goto/16 :goto_18

    :cond_7
    move-object v3, p1

    move-object v6, v5

    move-object p1, p0

    move-object v5, v4

    .line 8
    :try_start_5
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzgzf;->zzu(I)I

    move-result v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_8

    :try_start_6
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzgzf;->zzt(I)I

    move-result v8
    :try_end_6
    .catch Lcom/google/android/gms/internal/ads/zzgyf; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_8

    const v9, 0xfffff

    packed-switch v8, :pswitch_data_0

    move-object v2, v3

    move-object v1, v5

    move-object v5, v6

    if-nez v1, :cond_10

    .line 194
    :try_start_7
    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/zzhah;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_7
    .catch Lcom/google/android/gms/internal/ads/zzgyf; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    goto/16 :goto_e

    .line 147
    :pswitch_0
    :try_start_8
    invoke-direct {p0, v3, v2, v1}, Lcom/google/android/gms/internal/ads/zzgzf;->zzB(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzgzc;

    .line 148
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzgzf;->zzx(I)Lcom/google/android/gms/internal/ads/zzgzv;

    move-result-object v8

    .line 149
    invoke-interface {p2, v4, v8, p3}, Lcom/google/android/gms/internal/ads/zzgzp;->zzt(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzgzv;Lcom/google/android/gms/internal/ads/zzgxb;)V

    .line 150
    invoke-direct {p0, v3, v2, v1, v4}, Lcom/google/android/gms/internal/ads/zzgzf;->zzK(Ljava/lang/Object;IILjava/lang/Object;)V

    goto/16 :goto_9

    :pswitch_1
    and-int/2addr v4, v9

    .line 144
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzgzp;->zzn()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    int-to-long v9, v4

    .line 145
    invoke-static {v3, v9, v10, v8}, Lcom/google/android/gms/internal/ads/zzhao;->zzv(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 146
    invoke-direct {p0, v3, v2, v1}, Lcom/google/android/gms/internal/ads/zzgzf;->zzI(Ljava/lang/Object;II)V

    goto/16 :goto_9

    :pswitch_2
    and-int/2addr v4, v9

    .line 141
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzgzp;->zzi()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    int-to-long v9, v4

    .line 142
    invoke-static {v3, v9, v10, v8}, Lcom/google/android/gms/internal/ads/zzhao;->zzv(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 143
    invoke-direct {p0, v3, v2, v1}, Lcom/google/android/gms/internal/ads/zzgzf;->zzI(Ljava/lang/Object;II)V

    goto/16 :goto_9

    :pswitch_3
    and-int/2addr v4, v9

    .line 138
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzgzp;->zzm()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    int-to-long v9, v4

    .line 139
    invoke-static {v3, v9, v10, v8}, Lcom/google/android/gms/internal/ads/zzhao;->zzv(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 140
    invoke-direct {p0, v3, v2, v1}, Lcom/google/android/gms/internal/ads/zzgzf;->zzI(Ljava/lang/Object;II)V

    goto :goto_9

    :pswitch_4
    and-int/2addr v4, v9

    .line 135
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzgzp;->zzh()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    int-to-long v9, v4

    .line 136
    invoke-static {v3, v9, v10, v8}, Lcom/google/android/gms/internal/ads/zzhao;->zzv(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 137
    invoke-direct {p0, v3, v2, v1}, Lcom/google/android/gms/internal/ads/zzgzf;->zzI(Ljava/lang/Object;II)V

    goto :goto_9

    .line 151
    :pswitch_5
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzgzp;->zze()I

    move-result v8

    .line 152
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzgzf;->zzw(I)Lcom/google/android/gms/internal/ads/zzgxx;

    move-result-object v10

    if-eqz v10, :cond_9

    .line 153
    invoke-interface {v10, v8}, Lcom/google/android/gms/internal/ads/zzgxx;->zza(I)Z

    move-result v10

    if-eqz v10, :cond_8

    goto :goto_8

    .line 156
    :cond_8
    invoke-static {v3, v2, v8, v5, v6}, Lcom/google/android/gms/internal/ads/zzgzx;->zzo(Ljava/lang/Object;IILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzhah;)Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_5

    :cond_9
    :goto_8
    and-int/2addr v4, v9

    .line 154
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    int-to-long v9, v4

    invoke-static {v3, v9, v10, v8}, Lcom/google/android/gms/internal/ads/zzhao;->zzv(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 155
    invoke-direct {p0, v3, v2, v1}, Lcom/google/android/gms/internal/ads/zzgzf;->zzI(Ljava/lang/Object;II)V

    goto :goto_9

    :pswitch_6
    and-int/2addr v4, v9

    .line 132
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzgzp;->zzj()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    int-to-long v9, v4

    .line 133
    invoke-static {v3, v9, v10, v8}, Lcom/google/android/gms/internal/ads/zzhao;->zzv(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 134
    invoke-direct {p0, v3, v2, v1}, Lcom/google/android/gms/internal/ads/zzgzf;->zzI(Ljava/lang/Object;II)V

    goto :goto_9

    :pswitch_7
    and-int/2addr v4, v9

    .line 130
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzgzp;->zzp()Lcom/google/android/gms/internal/ads/zzgwj;

    move-result-object v8

    int-to-long v9, v4

    invoke-static {v3, v9, v10, v8}, Lcom/google/android/gms/internal/ads/zzhao;->zzv(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 131
    invoke-direct {p0, v3, v2, v1}, Lcom/google/android/gms/internal/ads/zzgzf;->zzI(Ljava/lang/Object;II)V

    goto :goto_9

    .line 157
    :pswitch_8
    invoke-direct {p0, v3, v2, v1}, Lcom/google/android/gms/internal/ads/zzgzf;->zzB(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzgzc;

    .line 158
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzgzf;->zzx(I)Lcom/google/android/gms/internal/ads/zzgzv;

    move-result-object v8

    .line 159
    invoke-interface {p2, v4, v8, p3}, Lcom/google/android/gms/internal/ads/zzgzp;->zzu(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzgzv;Lcom/google/android/gms/internal/ads/zzgxb;)V

    .line 160
    invoke-direct {p0, v3, v2, v1, v4}, Lcom/google/android/gms/internal/ads/zzgzf;->zzK(Ljava/lang/Object;IILjava/lang/Object;)V

    goto :goto_9

    .line 161
    :pswitch_9
    invoke-direct {p0, v3, v4, p2}, Lcom/google/android/gms/internal/ads/zzgzf;->zzG(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/zzgzp;)V

    .line 162
    invoke-direct {p0, v3, v2, v1}, Lcom/google/android/gms/internal/ads/zzgzf;->zzI(Ljava/lang/Object;II)V

    :goto_9
    move-object v2, v3

    move-object v1, v5

    move-object v5, v6

    goto/16 :goto_c

    :pswitch_a
    and-int/2addr v4, v9

    .line 127
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzgzp;->zzN()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    int-to-long v9, v4

    .line 128
    invoke-static {v3, v9, v10, v8}, Lcom/google/android/gms/internal/ads/zzhao;->zzv(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 129
    invoke-direct {p0, v3, v2, v1}, Lcom/google/android/gms/internal/ads/zzgzf;->zzI(Ljava/lang/Object;II)V

    goto :goto_9

    :pswitch_b
    and-int/2addr v4, v9

    .line 124
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzgzp;->zzf()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    int-to-long v9, v4

    .line 125
    invoke-static {v3, v9, v10, v8}, Lcom/google/android/gms/internal/ads/zzhao;->zzv(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 126
    invoke-direct {p0, v3, v2, v1}, Lcom/google/android/gms/internal/ads/zzgzf;->zzI(Ljava/lang/Object;II)V

    goto :goto_9

    :pswitch_c
    and-int/2addr v4, v9

    .line 121
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzgzp;->zzk()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    int-to-long v9, v4

    .line 122
    invoke-static {v3, v9, v10, v8}, Lcom/google/android/gms/internal/ads/zzhao;->zzv(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 123
    invoke-direct {p0, v3, v2, v1}, Lcom/google/android/gms/internal/ads/zzgzf;->zzI(Ljava/lang/Object;II)V

    goto :goto_9

    :pswitch_d
    and-int/2addr v4, v9

    .line 118
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzgzp;->zzg()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    int-to-long v9, v4

    .line 119
    invoke-static {v3, v9, v10, v8}, Lcom/google/android/gms/internal/ads/zzhao;->zzv(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 120
    invoke-direct {p0, v3, v2, v1}, Lcom/google/android/gms/internal/ads/zzgzf;->zzI(Ljava/lang/Object;II)V

    goto :goto_9

    :pswitch_e
    and-int/2addr v4, v9

    .line 115
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzgzp;->zzo()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    int-to-long v9, v4

    .line 116
    invoke-static {v3, v9, v10, v8}, Lcom/google/android/gms/internal/ads/zzhao;->zzv(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 117
    invoke-direct {p0, v3, v2, v1}, Lcom/google/android/gms/internal/ads/zzgzf;->zzI(Ljava/lang/Object;II)V

    goto :goto_9

    :pswitch_f
    and-int/2addr v4, v9

    .line 112
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzgzp;->zzl()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    int-to-long v9, v4

    .line 113
    invoke-static {v3, v9, v10, v8}, Lcom/google/android/gms/internal/ads/zzhao;->zzv(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 114
    invoke-direct {p0, v3, v2, v1}, Lcom/google/android/gms/internal/ads/zzgzf;->zzI(Ljava/lang/Object;II)V

    goto :goto_9

    :pswitch_10
    and-int/2addr v4, v9

    .line 109
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzgzp;->zzb()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    int-to-long v9, v4

    .line 110
    invoke-static {v3, v9, v10, v8}, Lcom/google/android/gms/internal/ads/zzhao;->zzv(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 111
    invoke-direct {p0, v3, v2, v1}, Lcom/google/android/gms/internal/ads/zzgzf;->zzI(Ljava/lang/Object;II)V

    goto :goto_9

    :pswitch_11
    and-int/2addr v4, v9

    .line 106
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzgzp;->zza()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    int-to-long v9, v4

    .line 107
    invoke-static {v3, v9, v10, v8}, Lcom/google/android/gms/internal/ads/zzhao;->zzv(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 108
    invoke-direct {p0, v3, v2, v1}, Lcom/google/android/gms/internal/ads/zzgzf;->zzI(Ljava/lang/Object;II)V

    goto/16 :goto_9

    .line 163
    :pswitch_12
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzgzf;->zzz(I)Ljava/lang/Object;

    move-result-object v2

    .line 164
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzgzf;->zzu(I)I

    move-result v1

    and-int/2addr v1, v9

    int-to-long v8, v1

    .line 165
    invoke-static {v3, v8, v9}, Lcom/google/android/gms/internal/ads/zzhao;->zzh(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 166
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgyx;->zza(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 167
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgyw;->zza()Lcom/google/android/gms/internal/ads/zzgyw;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgyw;->zzb()Lcom/google/android/gms/internal/ads/zzgyw;

    move-result-object v4

    .line 168
    invoke-static {v4, v1}, Lcom/google/android/gms/internal/ads/zzgyx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    invoke-static {v3, v8, v9, v4}, Lcom/google/android/gms/internal/ads/zzhao;->zzv(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v1, v4

    goto :goto_a

    .line 170
    :cond_a
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgyw;->zza()Lcom/google/android/gms/internal/ads/zzgyw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgyw;->zzb()Lcom/google/android/gms/internal/ads/zzgyw;

    move-result-object v1

    .line 171
    invoke-static {v3, v8, v9, v1}, Lcom/google/android/gms/internal/ads/zzhao;->zzv(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 172
    :cond_b
    :goto_a
    check-cast v1, Lcom/google/android/gms/internal/ads/zzgyw;

    .line 173
    check-cast v2, Lcom/google/android/gms/internal/ads/zzgyv;

    .line 174
    throw v0

    :catchall_3
    move-exception v0

    goto/16 :goto_6

    :catch_0
    nop

    move-object v2, v3

    move-object v1, v5

    move-object v5, v6

    goto/16 :goto_12

    :pswitch_13
    and-int v2, v4, v9

    .line 103
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzgzf;->zzx(I)Lcom/google/android/gms/internal/ads/zzgzv;

    move-result-object v1

    int-to-long v8, v2

    .line 104
    invoke-static {v3, v8, v9}, Lcom/google/android/gms/internal/ads/zzgyp;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 105
    invoke-interface {p2, v2, v1, p3}, Lcom/google/android/gms/internal/ads/zzgzp;->zzC(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzgzv;Lcom/google/android/gms/internal/ads/zzgxb;)V

    goto/16 :goto_9

    :pswitch_14
    and-int v1, v4, v9

    int-to-long v1, v1

    .line 69
    invoke-static {v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzgyp;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 70
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/zzgzp;->zzJ(Ljava/util/List;)V

    goto/16 :goto_9

    :pswitch_15
    and-int v1, v4, v9

    int-to-long v1, v1

    .line 67
    invoke-static {v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzgyp;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 68
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/zzgzp;->zzI(Ljava/util/List;)V

    goto/16 :goto_9

    :pswitch_16
    and-int v1, v4, v9

    int-to-long v1, v1

    .line 65
    invoke-static {v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzgyp;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 66
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/zzgzp;->zzH(Ljava/util/List;)V

    goto/16 :goto_9

    :pswitch_17
    and-int v1, v4, v9

    int-to-long v1, v1

    .line 63
    invoke-static {v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzgyp;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 64
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/zzgzp;->zzG(Ljava/util/List;)V
    :try_end_8
    .catch Lcom/google/android/gms/internal/ads/zzgyf; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto/16 :goto_9

    :pswitch_18
    and-int/2addr v4, v9

    int-to-long v8, v4

    .line 59
    :try_start_9
    invoke-static {v3, v8, v9}, Lcom/google/android/gms/internal/ads/zzgyp;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 60
    invoke-interface {p2, v4}, Lcom/google/android/gms/internal/ads/zzgzp;->zzy(Ljava/util/List;)V
    :try_end_9
    .catch Lcom/google/android/gms/internal/ads/zzgyf; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    move v8, v1

    move-object v1, v3

    move-object v3, v4

    .line 61
    :try_start_a
    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/ads/zzgzf;->zzw(I)Lcom/google/android/gms/internal/ads/zzgxx;

    move-result-object v4

    .line 62
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzgzx;->zzn(Ljava/lang/Object;ILjava/util/List;Lcom/google/android/gms/internal/ads/zzgxx;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzhah;)Ljava/lang/Object;

    move-result-object v4
    :try_end_a
    .catch Lcom/google/android/gms/internal/ads/zzgyf; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    move-object v2, v1

    move-object v5, v6

    goto/16 :goto_d

    :pswitch_19
    move-object v2, v3

    move-object v1, v5

    move-object v5, v6

    and-int v3, v4, v9

    int-to-long v3, v3

    .line 57
    :try_start_b
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzgyp;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 58
    invoke-interface {p2, v3}, Lcom/google/android/gms/internal/ads/zzgzp;->zzL(Ljava/util/List;)V

    goto/16 :goto_c

    :pswitch_1a
    move-object v2, v3

    move-object v1, v5

    move-object v5, v6

    and-int v3, v4, v9

    int-to-long v3, v3

    .line 55
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzgyp;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 56
    invoke-interface {p2, v3}, Lcom/google/android/gms/internal/ads/zzgzp;->zzv(Ljava/util/List;)V

    goto/16 :goto_c

    :pswitch_1b
    move-object v2, v3

    move-object v1, v5

    move-object v5, v6

    and-int v3, v4, v9

    int-to-long v3, v3

    .line 53
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzgyp;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 54
    invoke-interface {p2, v3}, Lcom/google/android/gms/internal/ads/zzgzp;->zzz(Ljava/util/List;)V

    goto/16 :goto_c

    :pswitch_1c
    move-object v2, v3

    move-object v1, v5

    move-object v5, v6

    and-int v3, v4, v9

    int-to-long v3, v3

    .line 51
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzgyp;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 52
    invoke-interface {p2, v3}, Lcom/google/android/gms/internal/ads/zzgzp;->zzA(Ljava/util/List;)V

    goto/16 :goto_c

    :pswitch_1d
    move-object v2, v3

    move-object v1, v5

    move-object v5, v6

    and-int v3, v4, v9

    int-to-long v3, v3

    .line 49
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzgyp;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 50
    invoke-interface {p2, v3}, Lcom/google/android/gms/internal/ads/zzgzp;->zzD(Ljava/util/List;)V

    goto/16 :goto_c

    :pswitch_1e
    move-object v2, v3

    move-object v1, v5

    move-object v5, v6

    and-int v3, v4, v9

    int-to-long v3, v3

    .line 47
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzgyp;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 48
    invoke-interface {p2, v3}, Lcom/google/android/gms/internal/ads/zzgzp;->zzM(Ljava/util/List;)V

    goto/16 :goto_c

    :pswitch_1f
    move-object v2, v3

    move-object v1, v5

    move-object v5, v6

    and-int v3, v4, v9

    int-to-long v3, v3

    .line 45
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzgyp;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 46
    invoke-interface {p2, v3}, Lcom/google/android/gms/internal/ads/zzgzp;->zzE(Ljava/util/List;)V

    goto/16 :goto_c

    :pswitch_20
    move-object v2, v3

    move-object v1, v5

    move-object v5, v6

    and-int v3, v4, v9

    int-to-long v3, v3

    .line 43
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzgyp;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 44
    invoke-interface {p2, v3}, Lcom/google/android/gms/internal/ads/zzgzp;->zzB(Ljava/util/List;)V

    goto/16 :goto_c

    :pswitch_21
    move-object v2, v3

    move-object v1, v5

    move-object v5, v6

    and-int v3, v4, v9

    int-to-long v3, v3

    .line 41
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzgyp;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 42
    invoke-interface {p2, v3}, Lcom/google/android/gms/internal/ads/zzgzp;->zzx(Ljava/util/List;)V

    goto/16 :goto_c

    :pswitch_22
    move-object v2, v3

    move-object v1, v5

    move-object v5, v6

    and-int v3, v4, v9

    int-to-long v3, v3

    .line 39
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzgyp;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 40
    invoke-interface {p2, v3}, Lcom/google/android/gms/internal/ads/zzgzp;->zzJ(Ljava/util/List;)V

    goto/16 :goto_c

    :pswitch_23
    move-object v2, v3

    move-object v1, v5

    move-object v5, v6

    and-int v3, v4, v9

    int-to-long v3, v3

    .line 37
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzgyp;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 38
    invoke-interface {p2, v3}, Lcom/google/android/gms/internal/ads/zzgzp;->zzI(Ljava/util/List;)V

    goto/16 :goto_c

    :pswitch_24
    move-object v2, v3

    move-object v1, v5

    move-object v5, v6

    and-int v3, v4, v9

    int-to-long v3, v3

    .line 35
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzgyp;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 36
    invoke-interface {p2, v3}, Lcom/google/android/gms/internal/ads/zzgzp;->zzH(Ljava/util/List;)V

    goto/16 :goto_c

    :pswitch_25
    move-object v2, v3

    move-object v1, v5

    move-object v5, v6

    and-int v3, v4, v9

    int-to-long v3, v3

    .line 33
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzgyp;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 34
    invoke-interface {p2, v3}, Lcom/google/android/gms/internal/ads/zzgzp;->zzG(Ljava/util/List;)V
    :try_end_b
    .catch Lcom/google/android/gms/internal/ads/zzgyf; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    goto/16 :goto_c

    :pswitch_26
    move v8, v1

    move-object v1, v5

    move-object v5, v6

    and-int/2addr v4, v9

    int-to-long v9, v4

    .line 29
    :try_start_c
    invoke-static {v3, v9, v10}, Lcom/google/android/gms/internal/ads/zzgyp;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 30
    invoke-interface {p2, v4}, Lcom/google/android/gms/internal/ads/zzgzp;->zzy(Ljava/util/List;)V
    :try_end_c
    .catch Lcom/google/android/gms/internal/ads/zzgyf; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    move-object v6, v5

    move-object v5, v1

    move-object v1, v3

    move-object v3, v4

    .line 31
    :try_start_d
    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/ads/zzgzf;->zzw(I)Lcom/google/android/gms/internal/ads/zzgxx;

    move-result-object v4

    .line 32
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzgzx;->zzn(Ljava/lang/Object;ILjava/util/List;Lcom/google/android/gms/internal/ads/zzgxx;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzhah;)Ljava/lang/Object;

    move-result-object v4
    :try_end_d
    .catch Lcom/google/android/gms/internal/ads/zzgyf; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    move-object v2, v1

    move-object v5, v6

    goto/16 :goto_d

    :catchall_4
    move-exception v0

    move-object v2, v1

    goto/16 :goto_16

    :catch_1
    move-object v2, v1

    goto/16 :goto_10

    :catchall_5
    move-exception v0

    move-object v2, v3

    goto/16 :goto_17

    :catch_2
    move-object v2, v3

    goto/16 :goto_11

    :pswitch_27
    move-object v2, v3

    move-object v1, v5

    move-object v5, v6

    and-int v3, v4, v9

    int-to-long v3, v3

    .line 27
    :try_start_e
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzgyp;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 28
    invoke-interface {p2, v3}, Lcom/google/android/gms/internal/ads/zzgzp;->zzL(Ljava/util/List;)V

    goto/16 :goto_c

    :pswitch_28
    move-object v2, v3

    move-object v1, v5

    move-object v5, v6

    and-int v3, v4, v9

    int-to-long v3, v3

    .line 25
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzgyp;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 26
    invoke-interface {p2, v3}, Lcom/google/android/gms/internal/ads/zzgzp;->zzw(Ljava/util/List;)V

    goto/16 :goto_c

    :pswitch_29
    move v8, v1

    move-object v2, v3

    move-object v1, v5

    move-object v5, v6

    .line 175
    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/ads/zzgzf;->zzx(I)Lcom/google/android/gms/internal/ads/zzgzv;

    move-result-object v3

    and-int/2addr v4, v9

    int-to-long v8, v4

    .line 176
    invoke-static {v2, v8, v9}, Lcom/google/android/gms/internal/ads/zzgyp;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 177
    invoke-interface {p2, v4, v3, p3}, Lcom/google/android/gms/internal/ads/zzgzp;->zzF(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzgzv;Lcom/google/android/gms/internal/ads/zzgxb;)V

    goto/16 :goto_c

    :pswitch_2a
    move-object v2, v3

    move-object v1, v5

    move-object v5, v6

    .line 98
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzgzf;->zzM(I)Z

    move-result v3

    if-eqz v3, :cond_c

    and-int v3, v4, v9

    int-to-long v3, v3

    .line 101
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzgyp;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    move-object v4, p2

    check-cast v4, Lcom/google/android/gms/internal/ads/zzgwq;

    const/4 v6, 0x1

    .line 102
    invoke-virtual {v4, v3, v6}, Lcom/google/android/gms/internal/ads/zzgwq;->zzK(Ljava/util/List;Z)V

    goto/16 :goto_c

    :cond_c
    and-int v3, v4, v9

    int-to-long v3, v3

    .line 99
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzgyp;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    move-object v4, p2

    check-cast v4, Lcom/google/android/gms/internal/ads/zzgwq;

    .line 100
    invoke-virtual {v4, v3, v7}, Lcom/google/android/gms/internal/ads/zzgwq;->zzK(Ljava/util/List;Z)V

    goto/16 :goto_c

    :pswitch_2b
    move-object v2, v3

    move-object v1, v5

    move-object v5, v6

    and-int v3, v4, v9

    int-to-long v3, v3

    .line 23
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzgyp;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 24
    invoke-interface {p2, v3}, Lcom/google/android/gms/internal/ads/zzgzp;->zzv(Ljava/util/List;)V

    goto/16 :goto_c

    :pswitch_2c
    move-object v2, v3

    move-object v1, v5

    move-object v5, v6

    and-int v3, v4, v9

    int-to-long v3, v3

    .line 21
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzgyp;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 22
    invoke-interface {p2, v3}, Lcom/google/android/gms/internal/ads/zzgzp;->zzz(Ljava/util/List;)V

    goto/16 :goto_c

    :pswitch_2d
    move-object v2, v3

    move-object v1, v5

    move-object v5, v6

    and-int v3, v4, v9

    int-to-long v3, v3

    .line 19
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzgyp;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 20
    invoke-interface {p2, v3}, Lcom/google/android/gms/internal/ads/zzgzp;->zzA(Ljava/util/List;)V

    goto/16 :goto_c

    :pswitch_2e
    move-object v2, v3

    move-object v1, v5

    move-object v5, v6

    and-int v3, v4, v9

    int-to-long v3, v3

    .line 17
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzgyp;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 18
    invoke-interface {p2, v3}, Lcom/google/android/gms/internal/ads/zzgzp;->zzD(Ljava/util/List;)V

    goto/16 :goto_c

    :pswitch_2f
    move-object v2, v3

    move-object v1, v5

    move-object v5, v6

    and-int v3, v4, v9

    int-to-long v3, v3

    .line 15
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzgyp;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 16
    invoke-interface {p2, v3}, Lcom/google/android/gms/internal/ads/zzgzp;->zzM(Ljava/util/List;)V

    goto/16 :goto_c

    :pswitch_30
    move-object v2, v3

    move-object v1, v5

    move-object v5, v6

    and-int v3, v4, v9

    int-to-long v3, v3

    .line 13
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzgyp;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 14
    invoke-interface {p2, v3}, Lcom/google/android/gms/internal/ads/zzgzp;->zzE(Ljava/util/List;)V

    goto/16 :goto_c

    :pswitch_31
    move-object v2, v3

    move-object v1, v5

    move-object v5, v6

    and-int v3, v4, v9

    int-to-long v3, v3

    .line 11
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzgyp;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 12
    invoke-interface {p2, v3}, Lcom/google/android/gms/internal/ads/zzgzp;->zzB(Ljava/util/List;)V

    goto/16 :goto_c

    :pswitch_32
    move-object v2, v3

    move-object v1, v5

    move-object v5, v6

    and-int v3, v4, v9

    int-to-long v3, v3

    .line 9
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzgyp;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 10
    invoke-interface {p2, v3}, Lcom/google/android/gms/internal/ads/zzgzp;->zzx(Ljava/util/List;)V

    goto/16 :goto_c

    :pswitch_33
    move v8, v1

    move-object v2, v3

    move-object v1, v5

    move-object v5, v6

    .line 178
    invoke-direct {p0, v2, v8}, Lcom/google/android/gms/internal/ads/zzgzf;->zzA(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzgzc;

    .line 179
    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/ads/zzgzf;->zzx(I)Lcom/google/android/gms/internal/ads/zzgzv;

    move-result-object v4

    .line 180
    invoke-interface {p2, v3, v4, p3}, Lcom/google/android/gms/internal/ads/zzgzp;->zzt(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzgzv;Lcom/google/android/gms/internal/ads/zzgxb;)V

    .line 181
    invoke-direct {p0, v2, v8, v3}, Lcom/google/android/gms/internal/ads/zzgzf;->zzJ(Ljava/lang/Object;ILjava/lang/Object;)V

    goto/16 :goto_c

    :pswitch_34
    move v8, v1

    move-object v2, v3

    move-object v1, v5

    move-object v5, v6

    and-int v3, v4, v9

    .line 97
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzgzp;->zzn()J

    move-result-wide v9

    int-to-long v3, v3

    invoke-static {v2, v3, v4, v9, v10}, Lcom/google/android/gms/internal/ads/zzhao;->zzu(Ljava/lang/Object;JJ)V

    .line 98
    invoke-direct {p0, v2, v8}, Lcom/google/android/gms/internal/ads/zzgzf;->zzH(Ljava/lang/Object;I)V

    goto/16 :goto_c

    :pswitch_35
    move v8, v1

    move-object v2, v3

    move-object v1, v5

    move-object v5, v6

    and-int v3, v4, v9

    .line 95
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzgzp;->zzi()I

    move-result v4

    int-to-long v9, v3

    invoke-static {v2, v9, v10, v4}, Lcom/google/android/gms/internal/ads/zzhao;->zzt(Ljava/lang/Object;JI)V

    .line 96
    invoke-direct {p0, v2, v8}, Lcom/google/android/gms/internal/ads/zzgzf;->zzH(Ljava/lang/Object;I)V

    goto/16 :goto_c

    :pswitch_36
    move v8, v1

    move-object v2, v3

    move-object v1, v5

    move-object v5, v6

    and-int v3, v4, v9

    .line 93
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzgzp;->zzm()J

    move-result-wide v9

    int-to-long v3, v3

    invoke-static {v2, v3, v4, v9, v10}, Lcom/google/android/gms/internal/ads/zzhao;->zzu(Ljava/lang/Object;JJ)V

    .line 94
    invoke-direct {p0, v2, v8}, Lcom/google/android/gms/internal/ads/zzgzf;->zzH(Ljava/lang/Object;I)V

    goto/16 :goto_c

    :pswitch_37
    move v8, v1

    move-object v2, v3

    move-object v1, v5

    move-object v5, v6

    and-int v3, v4, v9

    .line 91
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzgzp;->zzh()I

    move-result v4

    int-to-long v9, v3

    invoke-static {v2, v9, v10, v4}, Lcom/google/android/gms/internal/ads/zzhao;->zzt(Ljava/lang/Object;JI)V

    .line 92
    invoke-direct {p0, v2, v8}, Lcom/google/android/gms/internal/ads/zzgzf;->zzH(Ljava/lang/Object;I)V

    goto/16 :goto_c

    :pswitch_38
    move-object v8, v3

    move v3, v2

    move-object v2, v8

    move v8, v1

    move-object v1, v5

    move-object v5, v6

    .line 182
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzgzp;->zze()I

    move-result v6

    .line 183
    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/ads/zzgzf;->zzw(I)Lcom/google/android/gms/internal/ads/zzgxx;

    move-result-object v10

    if-eqz v10, :cond_e

    .line 184
    invoke-interface {v10, v6}, Lcom/google/android/gms/internal/ads/zzgxx;->zza(I)Z

    move-result v10

    if-eqz v10, :cond_d

    goto :goto_b

    .line 187
    :cond_d
    invoke-static {v2, v3, v6, v1, v5}, Lcom/google/android/gms/internal/ads/zzgzx;->zzo(Ljava/lang/Object;IILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzhah;)Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_d

    :cond_e
    :goto_b
    and-int v3, v4, v9

    int-to-long v3, v3

    .line 185
    invoke-static {v2, v3, v4, v6}, Lcom/google/android/gms/internal/ads/zzhao;->zzt(Ljava/lang/Object;JI)V

    .line 186
    invoke-direct {p0, v2, v8}, Lcom/google/android/gms/internal/ads/zzgzf;->zzH(Ljava/lang/Object;I)V

    goto/16 :goto_c

    :pswitch_39
    move v8, v1

    move-object v2, v3

    move-object v1, v5

    move-object v5, v6

    and-int v3, v4, v9

    .line 89
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzgzp;->zzj()I

    move-result v4

    int-to-long v9, v3

    invoke-static {v2, v9, v10, v4}, Lcom/google/android/gms/internal/ads/zzhao;->zzt(Ljava/lang/Object;JI)V

    .line 90
    invoke-direct {p0, v2, v8}, Lcom/google/android/gms/internal/ads/zzgzf;->zzH(Ljava/lang/Object;I)V

    goto/16 :goto_c

    :pswitch_3a
    move v8, v1

    move-object v2, v3

    move-object v1, v5

    move-object v5, v6

    and-int v3, v4, v9

    .line 87
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzgzp;->zzp()Lcom/google/android/gms/internal/ads/zzgwj;

    move-result-object v4

    int-to-long v9, v3

    invoke-static {v2, v9, v10, v4}, Lcom/google/android/gms/internal/ads/zzhao;->zzv(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 88
    invoke-direct {p0, v2, v8}, Lcom/google/android/gms/internal/ads/zzgzf;->zzH(Ljava/lang/Object;I)V

    goto/16 :goto_c

    :pswitch_3b
    move v8, v1

    move-object v2, v3

    move-object v1, v5

    move-object v5, v6

    .line 188
    invoke-direct {p0, v2, v8}, Lcom/google/android/gms/internal/ads/zzgzf;->zzA(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzgzc;

    .line 189
    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/ads/zzgzf;->zzx(I)Lcom/google/android/gms/internal/ads/zzgzv;

    move-result-object v4

    .line 190
    invoke-interface {p2, v3, v4, p3}, Lcom/google/android/gms/internal/ads/zzgzp;->zzu(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzgzv;Lcom/google/android/gms/internal/ads/zzgxb;)V

    .line 191
    invoke-direct {p0, v2, v8, v3}, Lcom/google/android/gms/internal/ads/zzgzf;->zzJ(Ljava/lang/Object;ILjava/lang/Object;)V

    goto/16 :goto_c

    :pswitch_3c
    move v8, v1

    move-object v2, v3

    move-object v1, v5

    move-object v5, v6

    .line 192
    invoke-direct {p0, v2, v4, p2}, Lcom/google/android/gms/internal/ads/zzgzf;->zzG(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/zzgzp;)V

    .line 193
    invoke-direct {p0, v2, v8}, Lcom/google/android/gms/internal/ads/zzgzf;->zzH(Ljava/lang/Object;I)V

    goto/16 :goto_c

    :catchall_6
    move-exception v0

    goto/16 :goto_17

    :pswitch_3d
    move v8, v1

    move-object v2, v3

    move-object v1, v5

    move-object v5, v6

    and-int v3, v4, v9

    .line 85
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzgzp;->zzN()Z

    move-result v4

    int-to-long v9, v3

    invoke-static {v2, v9, v10, v4}, Lcom/google/android/gms/internal/ads/zzhao;->zzp(Ljava/lang/Object;JZ)V

    .line 86
    invoke-direct {p0, v2, v8}, Lcom/google/android/gms/internal/ads/zzgzf;->zzH(Ljava/lang/Object;I)V

    goto/16 :goto_c

    :pswitch_3e
    move v8, v1

    move-object v2, v3

    move-object v1, v5

    move-object v5, v6

    and-int v3, v4, v9

    .line 83
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzgzp;->zzf()I

    move-result v4

    int-to-long v9, v3

    invoke-static {v2, v9, v10, v4}, Lcom/google/android/gms/internal/ads/zzhao;->zzt(Ljava/lang/Object;JI)V

    .line 84
    invoke-direct {p0, v2, v8}, Lcom/google/android/gms/internal/ads/zzgzf;->zzH(Ljava/lang/Object;I)V

    goto/16 :goto_c

    :pswitch_3f
    move v8, v1

    move-object v2, v3

    move-object v1, v5

    move-object v5, v6

    and-int v3, v4, v9

    .line 81
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzgzp;->zzk()J

    move-result-wide v9

    int-to-long v3, v3

    invoke-static {v2, v3, v4, v9, v10}, Lcom/google/android/gms/internal/ads/zzhao;->zzu(Ljava/lang/Object;JJ)V

    .line 82
    invoke-direct {p0, v2, v8}, Lcom/google/android/gms/internal/ads/zzgzf;->zzH(Ljava/lang/Object;I)V

    goto/16 :goto_c

    :pswitch_40
    move v8, v1

    move-object v2, v3

    move-object v1, v5

    move-object v5, v6

    and-int v3, v4, v9

    .line 79
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzgzp;->zzg()I

    move-result v4

    int-to-long v9, v3

    invoke-static {v2, v9, v10, v4}, Lcom/google/android/gms/internal/ads/zzhao;->zzt(Ljava/lang/Object;JI)V

    .line 80
    invoke-direct {p0, v2, v8}, Lcom/google/android/gms/internal/ads/zzgzf;->zzH(Ljava/lang/Object;I)V

    goto :goto_c

    :pswitch_41
    move v8, v1

    move-object v2, v3

    move-object v1, v5

    move-object v5, v6

    and-int v3, v4, v9

    .line 77
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzgzp;->zzo()J

    move-result-wide v9

    int-to-long v3, v3

    invoke-static {v2, v3, v4, v9, v10}, Lcom/google/android/gms/internal/ads/zzhao;->zzu(Ljava/lang/Object;JJ)V

    .line 78
    invoke-direct {p0, v2, v8}, Lcom/google/android/gms/internal/ads/zzgzf;->zzH(Ljava/lang/Object;I)V

    goto :goto_c

    :pswitch_42
    move v8, v1

    move-object v2, v3

    move-object v1, v5

    move-object v5, v6

    and-int v3, v4, v9

    .line 75
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzgzp;->zzl()J

    move-result-wide v9

    int-to-long v3, v3

    invoke-static {v2, v3, v4, v9, v10}, Lcom/google/android/gms/internal/ads/zzhao;->zzu(Ljava/lang/Object;JJ)V

    .line 76
    invoke-direct {p0, v2, v8}, Lcom/google/android/gms/internal/ads/zzgzf;->zzH(Ljava/lang/Object;I)V

    goto :goto_c

    :pswitch_43
    move v8, v1

    move-object v2, v3

    move-object v1, v5

    move-object v5, v6

    and-int v3, v4, v9

    .line 73
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzgzp;->zzb()F

    move-result v4

    int-to-long v9, v3

    invoke-static {v2, v9, v10, v4}, Lcom/google/android/gms/internal/ads/zzhao;->zzs(Ljava/lang/Object;JF)V

    .line 74
    invoke-direct {p0, v2, v8}, Lcom/google/android/gms/internal/ads/zzgzf;->zzH(Ljava/lang/Object;I)V

    goto :goto_c

    :pswitch_44
    move v8, v1

    move-object v2, v3

    move-object v1, v5

    move-object v5, v6

    and-int v3, v4, v9

    .line 71
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzgzp;->zza()D

    move-result-wide v9

    int-to-long v3, v3

    invoke-static {v2, v3, v4, v9, v10}, Lcom/google/android/gms/internal/ads/zzhao;->zzr(Ljava/lang/Object;JD)V

    .line 72
    invoke-direct {p0, v2, v8}, Lcom/google/android/gms/internal/ads/zzgzf;->zzH(Ljava/lang/Object;I)V
    :try_end_e
    .catch Lcom/google/android/gms/internal/ads/zzgyf; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    :goto_c
    move-object v4, v1

    :cond_f
    :goto_d
    move-object p1, v2

    goto/16 :goto_0

    :cond_10
    move-object v4, v1

    .line 195
    :goto_e
    :try_start_f
    invoke-virtual {v5, v4, p2, v7}, Lcom/google/android/gms/internal/ads/zzhah;->zzk(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzgzp;I)Z

    move-result v1
    :try_end_f
    .catch Lcom/google/android/gms/internal/ads/zzgyf; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    if-nez v1, :cond_f

    iget p2, p1, Lcom/google/android/gms/internal/ads/zzgzf;->zzk:I

    :goto_f
    iget p3, p1, Lcom/google/android/gms/internal/ads/zzgzf;->zzl:I

    if-ge p2, p3, :cond_12

    iget-object p3, p1, Lcom/google/android/gms/internal/ads/zzgzf;->zzj:[I

    .line 198
    aget v3, p3, p2

    move-object v6, v2

    move-object v1, p1

    .line 199
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzgzf;->zzy(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzhah;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p2, p2, 0x1

    goto :goto_f

    :catchall_7
    move-exception v0

    move-object p2, v0

    goto :goto_19

    :catch_3
    nop

    goto :goto_13

    :catch_4
    move-object v2, v3

    :goto_10
    move-object v1, v5

    move-object v5, v6

    :catch_5
    :goto_11
    nop

    :goto_12
    move-object v4, v1

    :goto_13
    if-nez v4, :cond_11

    .line 196
    :try_start_10
    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/zzhah;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 197
    :cond_11
    invoke-virtual {v5, v4, p2, v7}, Lcom/google/android/gms/internal/ads/zzhah;->zzk(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzgzp;I)Z

    move-result v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    if-nez v1, :cond_f

    iget p2, p1, Lcom/google/android/gms/internal/ads/zzgzf;->zzk:I

    :goto_14
    iget p3, p1, Lcom/google/android/gms/internal/ads/zzgzf;->zzl:I

    if-ge p2, p3, :cond_12

    iget-object p3, p1, Lcom/google/android/gms/internal/ads/zzgzf;->zzj:[I

    .line 198
    aget v3, p3, p2

    move-object v6, v2

    move-object v1, p1

    .line 199
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzgzf;->zzy(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzhah;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p2, p2, 0x1

    goto :goto_14

    :cond_12
    :goto_15
    if-eqz v4, :cond_13

    .line 202
    invoke-virtual {v5, v2, v4}, Lcom/google/android/gms/internal/ads/zzhah;->zzj(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_13
    return-void

    :catchall_8
    move-exception v0

    move-object v2, v3

    :goto_16
    move-object v1, v5

    move-object v5, v6

    goto :goto_17

    :catchall_9
    move-exception v0

    move-object v2, p1

    move-object v1, v4

    move-object p1, p0

    :goto_17
    move-object p2, v0

    :goto_18
    move-object v4, v1

    .line 193
    :goto_19
    iget p3, p1, Lcom/google/android/gms/internal/ads/zzgzf;->zzk:I

    :goto_1a
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzgzf;->zzl:I

    if-ge p3, v0, :cond_14

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzgzf;->zzj:[I

    .line 198
    aget v3, v0, p3

    move-object v6, v2

    move-object v1, p1

    .line 199
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzgzf;->zzy(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzhah;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p3, p3, 0x1

    move-object p1, p0

    goto :goto_1a

    :cond_14
    if-eqz v4, :cond_15

    .line 202
    invoke-virtual {v5, v2, v4}, Lcom/google/android/gms/internal/ads/zzhah;->zzj(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 203
    :cond_15
    throw p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzi(Ljava/lang/Object;[BIILcom/google/android/gms/internal/ads/zzgvx;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    .line 1
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzgzf;->zzc(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/ads/zzgvx;)I

    return-void
.end method

.method public final zzj(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzhaw;)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    .line 1
    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzgzf;->zzh:Z

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzgxn;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzgxn;->zza:Lcom/google/android/gms/internal/ads/zzgxg;

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzgxg;->zza:Lcom/google/android/gms/internal/ads/zzhad;

    .line 2
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhad;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgxg;->zzf()Ljava/util/Iterator;

    move-result-object v2

    .line 4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    move-object v8, v2

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    const/4 v8, 0x0

    :goto_0
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzgzf;->zzc:[I

    sget-object v10, Lcom/google/android/gms/internal/ads/zzgzf;->zzb:Lsun/misc/Unsafe;

    const/4 v2, 0x0

    const v4, 0xfffff

    const/4 v5, 0x0

    :goto_1
    array-length v13, v9

    if-ge v2, v13, :cond_a

    .line 5
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzgzf;->zzu(I)I

    move-result v13

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzgzf;->zzc:[I

    invoke-static {v13}, Lcom/google/android/gms/internal/ads/zzgzf;->zzt(I)I

    move-result v15

    const/16 v16, 0x0

    .line 6
    aget v7, v14, v2

    const/16 v12, 0x11

    const v17, 0xfffff

    if-gt v15, v12, :cond_3

    add-int/lit8 v12, v2, 0x2

    .line 7
    aget v12, v14, v12

    and-int v14, v12, v17

    if-eq v14, v4, :cond_2

    const v11, 0xfffff

    const/16 v18, 0x1

    if-ne v14, v11, :cond_1

    const/4 v5, 0x0

    goto :goto_2

    :cond_1
    int-to-long v4, v14

    .line 8
    invoke-virtual {v10, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    move v5, v4

    :goto_2
    move v4, v14

    goto :goto_3

    :cond_2
    const/16 v18, 0x1

    :goto_3
    ushr-int/lit8 v11, v12, 0x14

    shl-int v11, v18, v11

    move/from16 v19, v11

    move-object v11, v3

    move v3, v4

    move v4, v5

    move/from16 v5, v19

    goto :goto_4

    :cond_3
    const/16 v18, 0x1

    move-object v11, v3

    move v3, v4

    move v4, v5

    const/4 v5, 0x0

    :goto_4
    if-eqz v11, :cond_5

    .line 9
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/ads/zzgxo;

    iget v12, v12, Lcom/google/android/gms/internal/ads/zzgxo;->zza:I

    if-gt v12, v7, :cond_5

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzgzf;->zzn:Lcom/google/android/gms/internal/ads/zzgxc;

    .line 10
    invoke-virtual {v12, v6, v11}, Lcom/google/android/gms/internal/ads/zzgxc;->zzb(Lcom/google/android/gms/internal/ads/zzhaw;Ljava/util/Map$Entry;)V

    .line 11
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    goto :goto_4

    :cond_4
    move-object/from16 v11, v16

    goto :goto_4

    :cond_5
    const v17, 0xfffff

    and-int v12, v13, v17

    int-to-long v12, v12

    packed-switch v15, :pswitch_data_0

    :cond_6
    :goto_5
    const/4 v14, 0x0

    goto/16 :goto_7

    .line 110
    :pswitch_0
    invoke-direct {v0, v1, v7, v2}, Lcom/google/android/gms/internal/ads/zzgzf;->zzR(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 111
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzgzf;->zzx(I)Lcom/google/android/gms/internal/ads/zzgzv;

    move-result-object v12

    .line 112
    invoke-interface {v6, v7, v5, v12}, Lcom/google/android/gms/internal/ads/zzhaw;->zzq(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzgzv;)V

    goto :goto_5

    .line 113
    :pswitch_1
    invoke-direct {v0, v1, v7, v2}, Lcom/google/android/gms/internal/ads/zzgzf;->zzR(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 114
    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/ads/zzgzf;->zzv(Ljava/lang/Object;J)J

    move-result-wide v12

    invoke-interface {v6, v7, v12, v13}, Lcom/google/android/gms/internal/ads/zzhaw;->zzD(IJ)V

    goto :goto_5

    .line 115
    :pswitch_2
    invoke-direct {v0, v1, v7, v2}, Lcom/google/android/gms/internal/ads/zzgzf;->zzR(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 116
    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/ads/zzgzf;->zzp(Ljava/lang/Object;J)I

    move-result v5

    invoke-interface {v6, v7, v5}, Lcom/google/android/gms/internal/ads/zzhaw;->zzB(II)V

    goto :goto_5

    .line 117
    :pswitch_3
    invoke-direct {v0, v1, v7, v2}, Lcom/google/android/gms/internal/ads/zzgzf;->zzR(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 118
    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/ads/zzgzf;->zzv(Ljava/lang/Object;J)J

    move-result-wide v12

    invoke-interface {v6, v7, v12, v13}, Lcom/google/android/gms/internal/ads/zzhaw;->zzz(IJ)V

    goto :goto_5

    .line 119
    :pswitch_4
    invoke-direct {v0, v1, v7, v2}, Lcom/google/android/gms/internal/ads/zzgzf;->zzR(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 120
    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/ads/zzgzf;->zzp(Ljava/lang/Object;J)I

    move-result v5

    invoke-interface {v6, v7, v5}, Lcom/google/android/gms/internal/ads/zzhaw;->zzx(II)V

    goto :goto_5

    .line 121
    :pswitch_5
    invoke-direct {v0, v1, v7, v2}, Lcom/google/android/gms/internal/ads/zzgzf;->zzR(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 122
    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/ads/zzgzf;->zzp(Ljava/lang/Object;J)I

    move-result v5

    invoke-interface {v6, v7, v5}, Lcom/google/android/gms/internal/ads/zzhaw;->zzi(II)V

    goto :goto_5

    .line 123
    :pswitch_6
    invoke-direct {v0, v1, v7, v2}, Lcom/google/android/gms/internal/ads/zzgzf;->zzR(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 124
    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/ads/zzgzf;->zzp(Ljava/lang/Object;J)I

    move-result v5

    invoke-interface {v6, v7, v5}, Lcom/google/android/gms/internal/ads/zzhaw;->zzI(II)V

    goto :goto_5

    .line 125
    :pswitch_7
    invoke-direct {v0, v1, v7, v2}, Lcom/google/android/gms/internal/ads/zzgzf;->zzR(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 126
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzgwj;

    invoke-interface {v6, v7, v5}, Lcom/google/android/gms/internal/ads/zzhaw;->zzd(ILcom/google/android/gms/internal/ads/zzgwj;)V

    goto :goto_5

    .line 127
    :pswitch_8
    invoke-direct {v0, v1, v7, v2}, Lcom/google/android/gms/internal/ads/zzgzf;->zzR(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 128
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 129
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzgzf;->zzx(I)Lcom/google/android/gms/internal/ads/zzgzv;

    move-result-object v12

    invoke-interface {v6, v7, v5, v12}, Lcom/google/android/gms/internal/ads/zzhaw;->zzv(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzgzv;)V

    goto/16 :goto_5

    .line 130
    :pswitch_9
    invoke-direct {v0, v1, v7, v2}, Lcom/google/android/gms/internal/ads/zzgzf;->zzR(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 131
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v7, v5, v6}, Lcom/google/android/gms/internal/ads/zzgzf;->zzT(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzhaw;)V

    goto/16 :goto_5

    .line 132
    :pswitch_a
    invoke-direct {v0, v1, v7, v2}, Lcom/google/android/gms/internal/ads/zzgzf;->zzR(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 133
    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/ads/zzgzf;->zzS(Ljava/lang/Object;J)Z

    move-result v5

    invoke-interface {v6, v7, v5}, Lcom/google/android/gms/internal/ads/zzhaw;->zzb(IZ)V

    goto/16 :goto_5

    .line 134
    :pswitch_b
    invoke-direct {v0, v1, v7, v2}, Lcom/google/android/gms/internal/ads/zzgzf;->zzR(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 135
    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/ads/zzgzf;->zzp(Ljava/lang/Object;J)I

    move-result v5

    invoke-interface {v6, v7, v5}, Lcom/google/android/gms/internal/ads/zzhaw;->zzk(II)V

    goto/16 :goto_5

    .line 136
    :pswitch_c
    invoke-direct {v0, v1, v7, v2}, Lcom/google/android/gms/internal/ads/zzgzf;->zzR(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 137
    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/ads/zzgzf;->zzv(Ljava/lang/Object;J)J

    move-result-wide v12

    invoke-interface {v6, v7, v12, v13}, Lcom/google/android/gms/internal/ads/zzhaw;->zzm(IJ)V

    goto/16 :goto_5

    .line 138
    :pswitch_d
    invoke-direct {v0, v1, v7, v2}, Lcom/google/android/gms/internal/ads/zzgzf;->zzR(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 139
    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/ads/zzgzf;->zzp(Ljava/lang/Object;J)I

    move-result v5

    invoke-interface {v6, v7, v5}, Lcom/google/android/gms/internal/ads/zzhaw;->zzr(II)V

    goto/16 :goto_5

    .line 140
    :pswitch_e
    invoke-direct {v0, v1, v7, v2}, Lcom/google/android/gms/internal/ads/zzgzf;->zzR(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 141
    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/ads/zzgzf;->zzv(Ljava/lang/Object;J)J

    move-result-wide v12

    invoke-interface {v6, v7, v12, v13}, Lcom/google/android/gms/internal/ads/zzhaw;->zzK(IJ)V

    goto/16 :goto_5

    .line 142
    :pswitch_f
    invoke-direct {v0, v1, v7, v2}, Lcom/google/android/gms/internal/ads/zzgzf;->zzR(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 143
    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/ads/zzgzf;->zzv(Ljava/lang/Object;J)J

    move-result-wide v12

    invoke-interface {v6, v7, v12, v13}, Lcom/google/android/gms/internal/ads/zzhaw;->zzt(IJ)V

    goto/16 :goto_5

    .line 144
    :pswitch_10
    invoke-direct {v0, v1, v7, v2}, Lcom/google/android/gms/internal/ads/zzgzf;->zzR(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 145
    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/ads/zzgzf;->zzo(Ljava/lang/Object;J)F

    move-result v5

    invoke-interface {v6, v7, v5}, Lcom/google/android/gms/internal/ads/zzhaw;->zzo(IF)V

    goto/16 :goto_5

    .line 146
    :pswitch_11
    invoke-direct {v0, v1, v7, v2}, Lcom/google/android/gms/internal/ads/zzgzf;->zzR(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 147
    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/ads/zzgzf;->zzn(Ljava/lang/Object;J)D

    move-result-wide v12

    invoke-interface {v6, v7, v12, v13}, Lcom/google/android/gms/internal/ads/zzhaw;->zzf(ID)V

    goto/16 :goto_5

    .line 148
    :pswitch_12
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_7

    goto/16 :goto_5

    .line 195
    :cond_7
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzgzf;->zzz(I)Ljava/lang/Object;

    move-result-object v1

    .line 196
    check-cast v1, Lcom/google/android/gms/internal/ads/zzgyv;

    .line 197
    throw v16

    .line 105
    :pswitch_13
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzgzf;->zzc:[I

    .line 106
    aget v5, v5, v2

    .line 107
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 108
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzgzf;->zzx(I)Lcom/google/android/gms/internal/ads/zzgzv;

    move-result-object v12

    .line 109
    invoke-static {v5, v7, v6, v12}, Lcom/google/android/gms/internal/ads/zzgzx;->zzy(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzhaw;Lcom/google/android/gms/internal/ads/zzgzv;)V

    goto/16 :goto_5

    .line 102
    :pswitch_14
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzgzf;->zzc:[I

    .line 103
    aget v5, v5, v2

    .line 104
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    const/4 v14, 0x1

    .line 105
    invoke-static {v5, v7, v6, v14}, Lcom/google/android/gms/internal/ads/zzgzx;->zzF(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzhaw;Z)V

    goto/16 :goto_5

    :pswitch_15
    const/4 v14, 0x1

    .line 99
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzgzf;->zzc:[I

    .line 100
    aget v5, v5, v2

    .line 101
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 102
    invoke-static {v5, v7, v6, v14}, Lcom/google/android/gms/internal/ads/zzgzx;->zzE(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzhaw;Z)V

    goto/16 :goto_5

    :pswitch_16
    const/4 v14, 0x1

    .line 96
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzgzf;->zzc:[I

    .line 97
    aget v5, v5, v2

    .line 98
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 99
    invoke-static {v5, v7, v6, v14}, Lcom/google/android/gms/internal/ads/zzgzx;->zzD(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzhaw;Z)V

    goto/16 :goto_5

    :pswitch_17
    const/4 v14, 0x1

    .line 93
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzgzf;->zzc:[I

    .line 94
    aget v5, v5, v2

    .line 95
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 96
    invoke-static {v5, v7, v6, v14}, Lcom/google/android/gms/internal/ads/zzgzx;->zzC(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzhaw;Z)V

    goto/16 :goto_5

    :pswitch_18
    const/4 v14, 0x1

    .line 90
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzgzf;->zzc:[I

    .line 91
    aget v5, v5, v2

    .line 92
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 93
    invoke-static {v5, v7, v6, v14}, Lcom/google/android/gms/internal/ads/zzgzx;->zzu(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzhaw;Z)V

    goto/16 :goto_5

    :pswitch_19
    const/4 v14, 0x1

    .line 87
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzgzf;->zzc:[I

    .line 88
    aget v5, v5, v2

    .line 89
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 90
    invoke-static {v5, v7, v6, v14}, Lcom/google/android/gms/internal/ads/zzgzx;->zzH(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzhaw;Z)V

    goto/16 :goto_5

    :pswitch_1a
    const/4 v14, 0x1

    .line 84
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzgzf;->zzc:[I

    .line 85
    aget v5, v5, v2

    .line 86
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 87
    invoke-static {v5, v7, v6, v14}, Lcom/google/android/gms/internal/ads/zzgzx;->zzr(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzhaw;Z)V

    goto/16 :goto_5

    :pswitch_1b
    const/4 v14, 0x1

    .line 81
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzgzf;->zzc:[I

    .line 82
    aget v5, v5, v2

    .line 83
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 84
    invoke-static {v5, v7, v6, v14}, Lcom/google/android/gms/internal/ads/zzgzx;->zzv(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzhaw;Z)V

    goto/16 :goto_5

    :pswitch_1c
    const/4 v14, 0x1

    .line 78
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzgzf;->zzc:[I

    .line 79
    aget v5, v5, v2

    .line 80
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 81
    invoke-static {v5, v7, v6, v14}, Lcom/google/android/gms/internal/ads/zzgzx;->zzw(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzhaw;Z)V

    goto/16 :goto_5

    :pswitch_1d
    const/4 v14, 0x1

    .line 75
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzgzf;->zzc:[I

    .line 76
    aget v5, v5, v2

    .line 77
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 78
    invoke-static {v5, v7, v6, v14}, Lcom/google/android/gms/internal/ads/zzgzx;->zzz(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzhaw;Z)V

    goto/16 :goto_5

    :pswitch_1e
    const/4 v14, 0x1

    .line 72
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzgzf;->zzc:[I

    .line 73
    aget v5, v5, v2

    .line 74
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 75
    invoke-static {v5, v7, v6, v14}, Lcom/google/android/gms/internal/ads/zzgzx;->zzI(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzhaw;Z)V

    goto/16 :goto_5

    :pswitch_1f
    const/4 v14, 0x1

    .line 69
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzgzf;->zzc:[I

    .line 70
    aget v5, v5, v2

    .line 71
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 72
    invoke-static {v5, v7, v6, v14}, Lcom/google/android/gms/internal/ads/zzgzx;->zzA(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzhaw;Z)V

    goto/16 :goto_5

    :pswitch_20
    const/4 v14, 0x1

    .line 66
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzgzf;->zzc:[I

    .line 67
    aget v5, v5, v2

    .line 68
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 69
    invoke-static {v5, v7, v6, v14}, Lcom/google/android/gms/internal/ads/zzgzx;->zzx(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzhaw;Z)V

    goto/16 :goto_5

    :pswitch_21
    const/4 v14, 0x1

    .line 63
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzgzf;->zzc:[I

    .line 64
    aget v5, v5, v2

    .line 65
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 66
    invoke-static {v5, v7, v6, v14}, Lcom/google/android/gms/internal/ads/zzgzx;->zzt(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzhaw;Z)V

    goto/16 :goto_5

    .line 60
    :pswitch_22
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzgzf;->zzc:[I

    .line 61
    aget v5, v5, v2

    .line 62
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    const/4 v14, 0x0

    .line 63
    invoke-static {v5, v7, v6, v14}, Lcom/google/android/gms/internal/ads/zzgzx;->zzF(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzhaw;Z)V

    goto/16 :goto_7

    :pswitch_23
    const/4 v14, 0x0

    .line 57
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzgzf;->zzc:[I

    .line 58
    aget v5, v5, v2

    .line 59
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 60
    invoke-static {v5, v7, v6, v14}, Lcom/google/android/gms/internal/ads/zzgzx;->zzE(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzhaw;Z)V

    goto/16 :goto_7

    :pswitch_24
    const/4 v14, 0x0

    .line 54
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzgzf;->zzc:[I

    .line 55
    aget v5, v5, v2

    .line 56
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 57
    invoke-static {v5, v7, v6, v14}, Lcom/google/android/gms/internal/ads/zzgzx;->zzD(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzhaw;Z)V

    goto/16 :goto_7

    :pswitch_25
    const/4 v14, 0x0

    .line 51
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzgzf;->zzc:[I

    .line 52
    aget v5, v5, v2

    .line 53
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 54
    invoke-static {v5, v7, v6, v14}, Lcom/google/android/gms/internal/ads/zzgzx;->zzC(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzhaw;Z)V

    goto/16 :goto_7

    :pswitch_26
    const/4 v14, 0x0

    .line 48
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzgzf;->zzc:[I

    .line 49
    aget v5, v5, v2

    .line 50
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 51
    invoke-static {v5, v7, v6, v14}, Lcom/google/android/gms/internal/ads/zzgzx;->zzu(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzhaw;Z)V

    goto/16 :goto_7

    :pswitch_27
    const/4 v14, 0x0

    .line 45
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzgzf;->zzc:[I

    .line 46
    aget v5, v5, v2

    .line 47
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 48
    invoke-static {v5, v7, v6, v14}, Lcom/google/android/gms/internal/ads/zzgzx;->zzH(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzhaw;Z)V

    goto/16 :goto_7

    .line 42
    :pswitch_28
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzgzf;->zzc:[I

    .line 43
    aget v5, v5, v2

    .line 44
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 45
    invoke-static {v5, v7, v6}, Lcom/google/android/gms/internal/ads/zzgzx;->zzs(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzhaw;)V

    goto/16 :goto_5

    .line 38
    :pswitch_29
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzgzf;->zzc:[I

    .line 39
    aget v5, v5, v2

    .line 40
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 41
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzgzf;->zzx(I)Lcom/google/android/gms/internal/ads/zzgzv;

    move-result-object v12

    .line 42
    invoke-static {v5, v7, v6, v12}, Lcom/google/android/gms/internal/ads/zzgzx;->zzB(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzhaw;Lcom/google/android/gms/internal/ads/zzgzv;)V

    goto/16 :goto_5

    .line 35
    :pswitch_2a
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzgzf;->zzc:[I

    .line 36
    aget v5, v5, v2

    .line 37
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 38
    invoke-static {v5, v7, v6}, Lcom/google/android/gms/internal/ads/zzgzx;->zzG(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzhaw;)V

    goto/16 :goto_5

    .line 32
    :pswitch_2b
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzgzf;->zzc:[I

    .line 33
    aget v5, v5, v2

    .line 34
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    const/4 v14, 0x0

    .line 35
    invoke-static {v5, v7, v6, v14}, Lcom/google/android/gms/internal/ads/zzgzx;->zzr(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzhaw;Z)V

    goto/16 :goto_7

    :pswitch_2c
    const/4 v14, 0x0

    .line 29
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzgzf;->zzc:[I

    .line 30
    aget v5, v5, v2

    .line 31
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 32
    invoke-static {v5, v7, v6, v14}, Lcom/google/android/gms/internal/ads/zzgzx;->zzv(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzhaw;Z)V

    goto/16 :goto_7

    :pswitch_2d
    const/4 v14, 0x0

    .line 26
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzgzf;->zzc:[I

    .line 27
    aget v5, v5, v2

    .line 28
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 29
    invoke-static {v5, v7, v6, v14}, Lcom/google/android/gms/internal/ads/zzgzx;->zzw(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzhaw;Z)V

    goto/16 :goto_7

    :pswitch_2e
    const/4 v14, 0x0

    .line 23
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzgzf;->zzc:[I

    .line 24
    aget v5, v5, v2

    .line 25
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 26
    invoke-static {v5, v7, v6, v14}, Lcom/google/android/gms/internal/ads/zzgzx;->zzz(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzhaw;Z)V

    goto/16 :goto_7

    :pswitch_2f
    const/4 v14, 0x0

    .line 20
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzgzf;->zzc:[I

    .line 21
    aget v5, v5, v2

    .line 22
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 23
    invoke-static {v5, v7, v6, v14}, Lcom/google/android/gms/internal/ads/zzgzx;->zzI(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzhaw;Z)V

    goto/16 :goto_7

    :pswitch_30
    const/4 v14, 0x0

    .line 17
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzgzf;->zzc:[I

    .line 18
    aget v5, v5, v2

    .line 19
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 20
    invoke-static {v5, v7, v6, v14}, Lcom/google/android/gms/internal/ads/zzgzx;->zzA(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzhaw;Z)V

    goto/16 :goto_7

    :pswitch_31
    const/4 v14, 0x0

    .line 14
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzgzf;->zzc:[I

    .line 15
    aget v5, v5, v2

    .line 16
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 17
    invoke-static {v5, v7, v6, v14}, Lcom/google/android/gms/internal/ads/zzgzx;->zzx(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzhaw;Z)V

    goto/16 :goto_7

    :pswitch_32
    const/4 v14, 0x0

    .line 11
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzgzf;->zzc:[I

    .line 12
    aget v5, v5, v2

    .line 13
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 14
    invoke-static {v5, v7, v6, v14}, Lcom/google/android/gms/internal/ads/zzgzx;->zzt(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzhaw;Z)V

    goto/16 :goto_7

    :pswitch_33
    const/4 v14, 0x0

    .line 149
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgzf;->zzO(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 150
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzgzf;->zzx(I)Lcom/google/android/gms/internal/ads/zzgzv;

    move-result-object v12

    .line 151
    invoke-interface {v6, v7, v5, v12}, Lcom/google/android/gms/internal/ads/zzhaw;->zzq(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzgzv;)V

    goto/16 :goto_7

    :pswitch_34
    const/4 v14, 0x0

    .line 152
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgzf;->zzO(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 153
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v12

    invoke-interface {v6, v7, v12, v13}, Lcom/google/android/gms/internal/ads/zzhaw;->zzD(IJ)V

    goto/16 :goto_6

    :pswitch_35
    const/4 v14, 0x0

    .line 154
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgzf;->zzO(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 155
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v6, v7, v0}, Lcom/google/android/gms/internal/ads/zzhaw;->zzB(II)V

    goto/16 :goto_6

    :pswitch_36
    const/4 v14, 0x0

    .line 156
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgzf;->zzO(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 157
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v12

    invoke-interface {v6, v7, v12, v13}, Lcom/google/android/gms/internal/ads/zzhaw;->zzz(IJ)V

    goto/16 :goto_6

    :pswitch_37
    const/4 v14, 0x0

    .line 158
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgzf;->zzO(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 159
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v6, v7, v0}, Lcom/google/android/gms/internal/ads/zzhaw;->zzx(II)V

    goto/16 :goto_6

    :pswitch_38
    const/4 v14, 0x0

    .line 160
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgzf;->zzO(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 161
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v6, v7, v0}, Lcom/google/android/gms/internal/ads/zzhaw;->zzi(II)V

    goto/16 :goto_6

    :pswitch_39
    const/4 v14, 0x0

    .line 162
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgzf;->zzO(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 163
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v6, v7, v0}, Lcom/google/android/gms/internal/ads/zzhaw;->zzI(II)V

    goto/16 :goto_6

    :pswitch_3a
    const/4 v14, 0x0

    .line 164
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgzf;->zzO(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 165
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgwj;

    invoke-interface {v6, v7, v0}, Lcom/google/android/gms/internal/ads/zzhaw;->zzd(ILcom/google/android/gms/internal/ads/zzgwj;)V

    goto/16 :goto_6

    :pswitch_3b
    const/4 v14, 0x0

    .line 166
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgzf;->zzO(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 167
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 168
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzgzf;->zzx(I)Lcom/google/android/gms/internal/ads/zzgzv;

    move-result-object v12

    invoke-interface {v6, v7, v5, v12}, Lcom/google/android/gms/internal/ads/zzhaw;->zzv(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzgzv;)V

    goto/16 :goto_7

    :pswitch_3c
    const/4 v14, 0x0

    .line 169
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgzf;->zzO(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 170
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v7, v0, v6}, Lcom/google/android/gms/internal/ads/zzgzf;->zzT(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzhaw;)V

    goto :goto_6

    :pswitch_3d
    const/4 v14, 0x0

    .line 171
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgzf;->zzO(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 172
    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/ads/zzhao;->zzz(Ljava/lang/Object;J)Z

    move-result v0

    .line 173
    invoke-interface {v6, v7, v0}, Lcom/google/android/gms/internal/ads/zzhaw;->zzb(IZ)V

    goto :goto_6

    :pswitch_3e
    const/4 v14, 0x0

    .line 174
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgzf;->zzO(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 175
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v6, v7, v0}, Lcom/google/android/gms/internal/ads/zzhaw;->zzk(II)V

    goto :goto_6

    :pswitch_3f
    const/4 v14, 0x0

    .line 176
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgzf;->zzO(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 177
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v12

    invoke-interface {v6, v7, v12, v13}, Lcom/google/android/gms/internal/ads/zzhaw;->zzm(IJ)V

    goto :goto_6

    :pswitch_40
    const/4 v14, 0x0

    .line 178
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgzf;->zzO(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 179
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v6, v7, v0}, Lcom/google/android/gms/internal/ads/zzhaw;->zzr(II)V

    goto :goto_6

    :pswitch_41
    const/4 v14, 0x0

    .line 180
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgzf;->zzO(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 181
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v12

    invoke-interface {v6, v7, v12, v13}, Lcom/google/android/gms/internal/ads/zzhaw;->zzK(IJ)V

    goto :goto_6

    :pswitch_42
    const/4 v14, 0x0

    .line 182
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgzf;->zzO(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 183
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v12

    invoke-interface {v6, v7, v12, v13}, Lcom/google/android/gms/internal/ads/zzhaw;->zzt(IJ)V

    goto :goto_6

    :pswitch_43
    const/4 v14, 0x0

    .line 184
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgzf;->zzO(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 185
    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/ads/zzhao;->zzc(Ljava/lang/Object;J)F

    move-result v0

    .line 186
    invoke-interface {v6, v7, v0}, Lcom/google/android/gms/internal/ads/zzhaw;->zzo(IF)V

    :cond_8
    :goto_6
    move-object/from16 v0, p0

    goto :goto_7

    :pswitch_44
    const/4 v14, 0x0

    .line 187
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgzf;->zzO(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 188
    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/ads/zzhao;->zzb(Ljava/lang/Object;J)D

    move-result-wide v12

    .line 189
    invoke-interface {v6, v7, v12, v13}, Lcom/google/android/gms/internal/ads/zzhaw;->zzf(ID)V

    :cond_9
    :goto_7
    add-int/lit8 v2, v2, 0x3

    move v5, v4

    move v4, v3

    move-object v3, v11

    goto/16 :goto_1

    :cond_a
    const/16 v16, 0x0

    :goto_8
    if-eqz v3, :cond_c

    .line 8
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzgzf;->zzn:Lcom/google/android/gms/internal/ads/zzgxc;

    .line 190
    invoke-virtual {v2, v6, v3}, Lcom/google/android/gms/internal/ads/zzgxc;->zzb(Lcom/google/android/gms/internal/ads/zzhaw;Ljava/util/Map$Entry;)V

    .line 191
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/util/Map$Entry;

    goto :goto_8

    :cond_b
    move-object/from16 v3, v16

    goto :goto_8

    .line 192
    :cond_c
    check-cast v1, Lcom/google/android/gms/internal/ads/zzgxr;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzgxr;->zzt:Lcom/google/android/gms/internal/ads/zzhai;

    .line 193
    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzhai;

    .line 194
    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/zzhai;->zzl(Lcom/google/android/gms/internal/ads/zzhaw;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzk(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgzf;->zzc:[I

    array-length v2, v2

    if-ge v1, v2, :cond_2

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzgzf;->zzu(I)I

    move-result v2

    const v3, 0xfffff

    and-int v4, v2, v3

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgzf;->zzt(I)I

    move-result v2

    int-to-long v4, v4

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_3

    .line 2
    :pswitch_0
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzgzf;->zzr(I)I

    move-result v2

    and-int/2addr v2, v3

    int-to-long v2, v2

    .line 3
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzhao;->zzd(Ljava/lang/Object;J)I

    move-result v6

    .line 4
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/ads/zzhao;->zzd(Ljava/lang/Object;J)I

    move-result v2

    if-ne v6, v2, :cond_0

    .line 5
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhao;->zzh(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzhao;->zzh(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 6
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzgzx;->zzJ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_2

    .line 7
    :pswitch_1
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhao;->zzh(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzhao;->zzh(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 8
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzgzx;->zzJ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1

    .line 9
    :pswitch_2
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhao;->zzh(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzhao;->zzh(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 10
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzgzx;->zzJ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    :goto_1
    if-nez v2, :cond_1

    goto/16 :goto_2

    .line 11
    :pswitch_3
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzgzf;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 12
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhao;->zzh(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzhao;->zzh(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 13
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzgzx;->zzJ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_3

    .line 14
    :pswitch_4
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzgzf;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 15
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhao;->zzf(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzhao;->zzf(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    goto/16 :goto_3

    .line 16
    :pswitch_5
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzgzf;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 17
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhao;->zzd(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzhao;->zzd(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_0

    goto/16 :goto_3

    .line 18
    :pswitch_6
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzgzf;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 19
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhao;->zzf(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzhao;->zzf(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    goto/16 :goto_3

    .line 20
    :pswitch_7
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzgzf;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 21
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhao;->zzd(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzhao;->zzd(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_0

    goto/16 :goto_3

    .line 22
    :pswitch_8
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzgzf;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 23
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhao;->zzd(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzhao;->zzd(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_0

    goto/16 :goto_3

    .line 24
    :pswitch_9
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzgzf;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 25
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhao;->zzd(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzhao;->zzd(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_0

    goto/16 :goto_3

    .line 26
    :pswitch_a
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzgzf;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 27
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhao;->zzh(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzhao;->zzh(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 28
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzgzx;->zzJ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_3

    .line 29
    :pswitch_b
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzgzf;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 30
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhao;->zzh(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzhao;->zzh(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 31
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzgzx;->zzJ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_3

    .line 32
    :pswitch_c
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzgzf;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 33
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhao;->zzh(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzhao;->zzh(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 34
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzgzx;->zzJ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_3

    .line 35
    :pswitch_d
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzgzf;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 36
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhao;->zzz(Ljava/lang/Object;J)Z

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzhao;->zzz(Ljava/lang/Object;J)Z

    move-result v3

    if-ne v2, v3, :cond_0

    goto/16 :goto_3

    .line 37
    :pswitch_e
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzgzf;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 38
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhao;->zzd(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzhao;->zzd(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_0

    goto/16 :goto_3

    .line 39
    :pswitch_f
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzgzf;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 40
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhao;->zzf(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzhao;->zzf(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    goto/16 :goto_3

    .line 41
    :pswitch_10
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzgzf;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 42
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhao;->zzd(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzhao;->zzd(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_0

    goto :goto_3

    .line 43
    :pswitch_11
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzgzf;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 44
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhao;->zzf(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzhao;->zzf(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    goto :goto_3

    .line 45
    :pswitch_12
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzgzf;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 46
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhao;->zzf(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzhao;->zzf(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    goto :goto_3

    .line 47
    :pswitch_13
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzgzf;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 48
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhao;->zzc(Ljava/lang/Object;J)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    .line 49
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzhao;->zzc(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v2, v3, :cond_0

    goto :goto_3

    .line 50
    :pswitch_14
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzgzf;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 51
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhao;->zzb(Ljava/lang/Object;J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 52
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzhao;->zzb(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    goto :goto_3

    :cond_0
    :goto_2
    return v0

    :cond_1
    :goto_3
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_0

    .line 53
    :cond_2
    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzgxr;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzgxr;->zzt:Lcom/google/android/gms/internal/ads/zzhai;

    .line 54
    move-object v2, p2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzgxr;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzgxr;->zzt:Lcom/google/android/gms/internal/ads/zzhai;

    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    :cond_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgzf;->zzh:Z

    if-eqz v0, :cond_4

    .line 56
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgxn;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzgxn;->zza:Lcom/google/android/gms/internal/ads/zzgxg;

    .line 57
    check-cast p2, Lcom/google/android/gms/internal/ads/zzgxn;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzgxn;->zza:Lcom/google/android/gms/internal/ads/zzgxg;

    .line 58
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzgxg;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final zzl(Ljava/lang/Object;)Z
    .locals 14

    const/4 v0, 0x0

    const v1, 0xfffff

    const/4 v2, 0x0

    const v3, 0xfffff

    const/4 v4, 0x0

    .line 1
    :goto_0
    iget v5, p0, Lcom/google/android/gms/internal/ads/zzgzf;->zzk:I

    const/4 v6, 0x1

    if-ge v2, v5, :cond_b

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzgzf;->zzj:[I

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzgzf;->zzc:[I

    aget v10, v5, v2

    .line 2
    aget v5, v7, v10

    .line 3
    invoke-direct {p0, v10}, Lcom/google/android/gms/internal/ads/zzgzf;->zzu(I)I

    move-result v7

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzgzf;->zzc:[I

    add-int/lit8 v9, v10, 0x2

    .line 4
    aget v8, v8, v9

    and-int v9, v8, v1

    ushr-int/lit8 v8, v8, 0x14

    shl-int v13, v6, v8

    if-eq v9, v3, :cond_1

    if-eq v9, v1, :cond_0

    int-to-long v3, v9

    sget-object v6, Lcom/google/android/gms/internal/ads/zzgzf;->zzb:Lsun/misc/Unsafe;

    .line 5
    invoke-virtual {v6, p1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    :cond_0
    move v12, v4

    move v11, v9

    goto :goto_1

    :cond_1
    move v11, v3

    move v12, v4

    :goto_1
    const/high16 v3, 0x10000000

    and-int/2addr v3, v7

    move-object v8, p0

    move-object v9, p1

    if-eqz v3, :cond_3

    .line 6
    invoke-direct/range {v8 .. v13}, Lcom/google/android/gms/internal/ads/zzgzf;->zzO(Ljava/lang/Object;IIII)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    return v0

    :cond_3
    :goto_2
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzgzf;->zzt(I)I

    move-result p1

    const/16 v3, 0x9

    if-eq p1, v3, :cond_9

    const/16 v3, 0x11

    if-eq p1, v3, :cond_9

    const/16 v3, 0x1b

    if-eq p1, v3, :cond_7

    const/16 v3, 0x3c

    if-eq p1, v3, :cond_6

    const/16 v3, 0x44

    if-eq p1, v3, :cond_6

    const/16 v3, 0x31

    if-eq p1, v3, :cond_7

    const/16 v3, 0x32

    if-eq p1, v3, :cond_4

    goto :goto_4

    :cond_4
    and-int p1, v7, v1

    int-to-long v3, p1

    .line 13
    invoke-static {v9, v3, v4}, Lcom/google/android/gms/internal/ads/zzhao;->zzh(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 14
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgyw;

    .line 15
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_4

    .line 20
    :cond_5
    invoke-direct {p0, v10}, Lcom/google/android/gms/internal/ads/zzgzf;->zzz(I)Ljava/lang/Object;

    move-result-object p1

    .line 21
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgyv;

    const/4 p1, 0x0

    .line 22
    throw p1

    .line 16
    :cond_6
    invoke-direct {p0, v9, v5, v10}, Lcom/google/android/gms/internal/ads/zzgzf;->zzR(Ljava/lang/Object;II)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 17
    invoke-direct {p0, v10}, Lcom/google/android/gms/internal/ads/zzgzf;->zzx(I)Lcom/google/android/gms/internal/ads/zzgzv;

    move-result-object p1

    invoke-static {v9, v7, p1}, Lcom/google/android/gms/internal/ads/zzgzf;->zzP(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/zzgzv;)Z

    move-result p1

    if-nez p1, :cond_a

    return v0

    :cond_7
    and-int p1, v7, v1

    int-to-long v3, p1

    .line 7
    invoke-static {v9, v3, v4}, Lcom/google/android/gms/internal/ads/zzhao;->zzh(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 8
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a

    .line 9
    invoke-direct {p0, v10}, Lcom/google/android/gms/internal/ads/zzgzf;->zzx(I)Lcom/google/android/gms/internal/ads/zzgzv;

    move-result-object v3

    const/4 v4, 0x0

    .line 10
    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_a

    .line 11
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 12
    invoke-interface {v3, v5}, Lcom/google/android/gms/internal/ads/zzgzv;->zzl(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    return v0

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 18
    :cond_9
    invoke-direct/range {v8 .. v13}, Lcom/google/android/gms/internal/ads/zzgzf;->zzO(Ljava/lang/Object;IIII)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 19
    invoke-direct {p0, v10}, Lcom/google/android/gms/internal/ads/zzgzf;->zzx(I)Lcom/google/android/gms/internal/ads/zzgzv;

    move-result-object p1

    invoke-static {v9, v7, p1}, Lcom/google/android/gms/internal/ads/zzgzf;->zzP(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/zzgzv;)Z

    move-result p1

    if-nez p1, :cond_a

    return v0

    :cond_a
    :goto_4
    add-int/lit8 v2, v2, 0x1

    move-object p1, v9

    move v3, v11

    move v4, v12

    goto/16 :goto_0

    :cond_b
    move-object v8, p0

    move-object v9, p1

    iget-boolean p1, v8, Lcom/google/android/gms/internal/ads/zzgzf;->zzh:Z

    if-eqz p1, :cond_c

    .line 23
    move-object p1, v9

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgxn;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzgxn;->zza:Lcom/google/android/gms/internal/ads/zzgxg;

    .line 24
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgxg;->zzi()Z

    move-result p1

    if-nez p1, :cond_c

    return v0

    :cond_c
    return v6
.end method

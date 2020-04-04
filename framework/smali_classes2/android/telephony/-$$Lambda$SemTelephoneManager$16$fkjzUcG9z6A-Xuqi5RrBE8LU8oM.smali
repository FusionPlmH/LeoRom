.class public final synthetic Landroid/telephony/-$$Lambda$SemTelephoneManager$16$fkjzUcG9z6A-Xuqi5RrBE8LU8oM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Landroid/telephony/-$$Lambda$SemTelephoneManager$16$fkjzUcG9z6A-Xuqi5RrBE8LU8oM;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/-$$Lambda$SemTelephoneManager$16$fkjzUcG9z6A-Xuqi5RrBE8LU8oM;

    invoke-direct {v0}, Landroid/telephony/-$$Lambda$SemTelephoneManager$16$fkjzUcG9z6A-Xuqi5RrBE8LU8oM;-><init>()V

    sput-object v0, Landroid/telephony/-$$Lambda$SemTelephoneManager$16$fkjzUcG9z6A-Xuqi5RrBE8LU8oM;->INSTANCE:Landroid/telephony/-$$Lambda$SemTelephoneManager$16$fkjzUcG9z6A-Xuqi5RrBE8LU8oM;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Landroid/telephony/SemTelephoneManager$16;->lambda$onResult$0(Ljava/util/List;)Landroid/telephony/SemTelephoneManager$NetworkInfo;

    move-result-object p1

    return-object p1
.end method

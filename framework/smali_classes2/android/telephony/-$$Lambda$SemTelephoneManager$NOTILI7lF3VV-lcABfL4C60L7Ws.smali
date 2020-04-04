.class public final synthetic Landroid/telephony/-$$Lambda$SemTelephoneManager$NOTILI7lF3VV-lcABfL4C60L7Ws;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/telephony/SemTelephoneManager;

.field private final synthetic f$1:[Landroid/telephony/SemTelephoneManager$CallBarringInfo;

.field private final synthetic f$2:I

.field private final synthetic f$3:Landroid/telephony/SemTelephoneManager$OnResultListener;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/SemTelephoneManager;[Landroid/telephony/SemTelephoneManager$CallBarringInfo;ILandroid/telephony/SemTelephoneManager$OnResultListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$NOTILI7lF3VV-lcABfL4C60L7Ws;->f$0:Landroid/telephony/SemTelephoneManager;

    iput-object p2, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$NOTILI7lF3VV-lcABfL4C60L7Ws;->f$1:[Landroid/telephony/SemTelephoneManager$CallBarringInfo;

    iput p3, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$NOTILI7lF3VV-lcABfL4C60L7Ws;->f$2:I

    iput-object p4, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$NOTILI7lF3VV-lcABfL4C60L7Ws;->f$3:Landroid/telephony/SemTelephoneManager$OnResultListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$NOTILI7lF3VV-lcABfL4C60L7Ws;->f$0:Landroid/telephony/SemTelephoneManager;

    iget-object v1, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$NOTILI7lF3VV-lcABfL4C60L7Ws;->f$1:[Landroid/telephony/SemTelephoneManager$CallBarringInfo;

    iget v2, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$NOTILI7lF3VV-lcABfL4C60L7Ws;->f$2:I

    iget-object v3, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$NOTILI7lF3VV-lcABfL4C60L7Ws;->f$3:Landroid/telephony/SemTelephoneManager$OnResultListener;

    invoke-static {v0, v1, v2, v3}, Landroid/telephony/SemTelephoneManager;->lambda$setIncomingCallBarringInfoList$52(Landroid/telephony/SemTelephoneManager;[Landroid/telephony/SemTelephoneManager$CallBarringInfo;ILandroid/telephony/SemTelephoneManager$OnResultListener;)V

    return-void
.end method

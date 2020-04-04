.class Lcom/android/server/display/WFDUibcManager$DeXonPCConnectionState;
.super Ljava/lang/Object;
.source "WFDUibcManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/WFDUibcManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeXonPCConnectionState"
.end annotation


# static fields
.field private static final SETTING_SOURCE_CONNECT_CONN:I = 0x1

.field private static final SETTING_SOURCE_CONNECT_DEXONPC:I = 0x3

.field private static final SETTING_SOURCE_CONNECT_DISCONN:I = 0x0

.field private static final SETTING_SOURCE_CONNECT_MIRRORING:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WFDUibcManager;


# direct methods
.method private constructor <init>(Lcom/android/server/display/WFDUibcManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/WFDUibcManager$DeXonPCConnectionState;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

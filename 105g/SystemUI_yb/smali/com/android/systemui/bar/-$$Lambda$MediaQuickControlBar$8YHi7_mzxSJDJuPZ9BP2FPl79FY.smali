.class public final synthetic Lcom/android/systemui/bar/-$$Lambda$MediaQuickControlBar$8YHi7_mzxSJDJuPZ9BP2FPl79FY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/bar/-$$Lambda$MediaQuickControlBar$8YHi7_mzxSJDJuPZ9BP2FPl79FY;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/bar/-$$Lambda$MediaQuickControlBar$8YHi7_mzxSJDJuPZ9BP2FPl79FY;

    invoke-direct {v0}, Lcom/android/systemui/bar/-$$Lambda$MediaQuickControlBar$8YHi7_mzxSJDJuPZ9BP2FPl79FY;-><init>()V

    sput-object v0, Lcom/android/systemui/bar/-$$Lambda$MediaQuickControlBar$8YHi7_mzxSJDJuPZ9BP2FPl79FY;->INSTANCE:Lcom/android/systemui/bar/-$$Lambda$MediaQuickControlBar$8YHi7_mzxSJDJuPZ9BP2FPl79FY;

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

    check-cast p1, Landroid/content/ComponentName;

    invoke-static {p1}, Lcom/android/systemui/bar/MediaQuickControlBar;->lambda$8YHi7_mzxSJDJuPZ9BP2FPl79FY(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

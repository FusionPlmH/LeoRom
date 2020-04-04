.class public Lcom/fusionleo/LeoX/systemui/widget/MeterBack;
.super Lcom/fusionleo/LeoX/systemui/widget/MeterBase;
.source "MeterBack.java"


# static fields
.field public static final NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/fusionleo/LeoX/systemui/widget/MeterBack;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fusionleo/LeoX/systemui/widget/MeterBack;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;-><init>(Landroid/content/Context;)V

    sget-object v0, Lcom/fusionleo/LeoX/systemui/widget/MeterBack;->NAME:Ljava/lang/String;

    invoke-virtual {p0, v0, p0}, Lcom/fusionleo/LeoX/systemui/widget/MeterBack;->Register(Ljava/lang/String;Lcom/fusionleo/LeoX/systemui/widget/MeterBase;)V

    const-string v0, "back_selector"

    const-string v1, "pop_back"

    const-string v2, "back_pressed"

    invoke-virtual {p0, v0, v1, v2}, Lcom/fusionleo/LeoX/systemui/widget/MeterBack;->MiniButton(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public Click()V
    .locals 3

    sget v0, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoMiniBackAction:I

    sget-object v1, Lcom/fusionleo/LeoProvider/LeoManages;->mLeoFloatBall:[Ljava/lang/String;

    const/16 v2, 0xf

    aget-object v1, v1, v2

    const/16 v2, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Lcom/fusionleo/LeoX/systemui/widget/MeterBack;->updateAction(ILjava/lang/String;I)V

    return-void
.end method

.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$NavBarPresenter$9-_ZT2TFdwCZq1OeRddmVAsbo30;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/NavBarPresenter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/NavBarPresenter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavBarPresenter$9-_ZT2TFdwCZq1OeRddmVAsbo30;->f$0:Lcom/android/systemui/statusbar/phone/NavBarPresenter;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavBarPresenter$9-_ZT2TFdwCZq1OeRddmVAsbo30;->f$0:Lcom/android/systemui/statusbar/phone/NavBarPresenter;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->lambda$forceImmersivePinClick$3(Lcom/android/systemui/statusbar/phone/NavBarPresenter;)V

    return-void
.end method

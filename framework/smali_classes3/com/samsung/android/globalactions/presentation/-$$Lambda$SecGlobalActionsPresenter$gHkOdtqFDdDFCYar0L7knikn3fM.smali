.class public final synthetic Lcom/samsung/android/globalactions/presentation/-$$Lambda$SecGlobalActionsPresenter$gHkOdtqFDdDFCYar0L7knikn3fM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/globalactions/presentation/-$$Lambda$SecGlobalActionsPresenter$gHkOdtqFDdDFCYar0L7knikn3fM;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/-$$Lambda$SecGlobalActionsPresenter$gHkOdtqFDdDFCYar0L7knikn3fM;->f$0:Ljava/lang/String;

    check-cast p1, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    invoke-static {v0, p1}, Lcom/samsung/android/globalactions/presentation/SecGlobalActionsPresenter;->lambda$clearActions$0(Ljava/lang/String;Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;)Z

    move-result p1

    return p1
.end method
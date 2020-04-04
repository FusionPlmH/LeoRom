.class Lcom/samsung/android/settings/eternal/manager/DocumentValidator$1;
.super Ljava/lang/Object;
.source "DocumentValidator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/eternal/manager/DocumentValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/samsung/android/settings/eternal/manager/DocumentValidator$ValidationResult;",
        ">;"
    }
.end annotation


# instance fields
.field private final sCollator:Ljava/text/Collator;

.field final synthetic this$0:Lcom/samsung/android/settings/eternal/manager/DocumentValidator;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/eternal/manager/DocumentValidator;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/settings/eternal/manager/DocumentValidator$1;->this$0:Lcom/samsung/android/settings/eternal/manager/DocumentValidator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/eternal/manager/DocumentValidator$1;->sCollator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public compare(Lcom/samsung/android/settings/eternal/manager/DocumentValidator$ValidationResult;Lcom/samsung/android/settings/eternal/manager/DocumentValidator$ValidationResult;)I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/eternal/manager/DocumentValidator$1;->sCollator:Ljava/text/Collator;

    invoke-static {p1}, Lcom/samsung/android/settings/eternal/manager/DocumentValidator$ValidationResult;->access$000(Lcom/samsung/android/settings/eternal/manager/DocumentValidator$ValidationResult;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lcom/samsung/android/settings/eternal/manager/DocumentValidator$ValidationResult;->access$000(Lcom/samsung/android/settings/eternal/manager/DocumentValidator$ValidationResult;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/samsung/android/settings/eternal/manager/DocumentValidator$ValidationResult;

    check-cast p2, Lcom/samsung/android/settings/eternal/manager/DocumentValidator$ValidationResult;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/eternal/manager/DocumentValidator$1;->compare(Lcom/samsung/android/settings/eternal/manager/DocumentValidator$ValidationResult;Lcom/samsung/android/settings/eternal/manager/DocumentValidator$ValidationResult;)I

    move-result p1

    return p1
.end method

.class Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;
.super Ljava/lang/Object;
.source "FirewallRulesApplier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/firewall/FirewallRulesApplier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DomainFilterApplicationChainsManager"
.end annotation


# instance fields
.field private mDomainFilterChainsCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mDomainFilterChainsCacheLock:Ljava/lang/Object;

.field final synthetic this$0:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/firewall/FirewallRulesApplier;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;->this$0:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;->mDomainFilterChainsCache:Ljava/util/Map;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;->mDomainFilterChainsCacheLock:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/firewall/FirewallRulesApplier;Lcom/android/server/enterprise/firewall/FirewallRulesApplier$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;-><init>(Lcom/android/server/enterprise/firewall/FirewallRulesApplier;)V

    return-void
.end method

.method private checkChainExistsForApplication(Ljava/lang/Integer;Ljava/lang/Integer;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;->mDomainFilterChainsCache:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;->mDomainFilterChainsCache:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public addChainForApplication(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Z
    .locals 6

    invoke-direct {p0, p2, p3}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;->checkChainExistsForApplication(Ljava/lang/Integer;Ljava/lang/Integer;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string v0, "FirewallRulesApplier"

    const-string v2, "chain exists for application"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    nop

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {p1, v0, v2}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->getCreateDomainFilterChainsForUidCommands(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    if-eqz p1, :cond_1

    const-string v2, "*"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    :cond_2
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;->this$0:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    invoke-static {v3}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->access$100(Lcom/android/server/enterprise/firewall/FirewallRulesApplier;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/firewall/FirewallUtils;->getUidsToExemptForUser(ILandroid/content/Context;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    nop

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->getCreateDomainFilterExceptionUidRules(I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;->this$0:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    const-string v3, ";"

    invoke-static {v3, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->access$200(Lcom/android/server/enterprise/firewall/FirewallRulesApplier;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v1, "FirewallRulesApplier"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to create chain for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1

    :cond_4
    iget-object v3, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;->mDomainFilterChainsCacheLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;->mDomainFilterChainsCache:Ljava/util/Map;

    invoke-interface {v4, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;->mDomainFilterChainsCache:Ljava/util/Map;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4, p3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-object v4, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;->mDomainFilterChainsCache:Ljava/util/Map;

    invoke-interface {v4, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v3

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public clearChainsForUserId(Ljava/lang/Integer;)Z
    .locals 5

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;->mDomainFilterChainsCache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;->mDomainFilterChainsCache:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v3, p1}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;->removeChainForApplication(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Z

    move-result v4

    and-int/2addr v0, v4

    goto :goto_0

    :cond_0
    return v0
.end method

.method public removeChainForApplication(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Z
    .locals 5

    invoke-direct {p0, p2, p3}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;->checkChainExistsForApplication(Ljava/lang/Integer;Ljava/lang/Integer;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    nop

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {p1, v0, v2}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->getRemoveDomainFilterChainsForUidCommands(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;->this$0:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    const-string v3, ";"

    invoke-static {v3, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->access$200(Lcom/android/server/enterprise/firewall/FirewallRulesApplier;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v1, "FirewallRulesApplier"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to remove chain for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1

    :cond_1
    iget-object v3, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;->mDomainFilterChainsCacheLock:Ljava/lang/Object;

    monitor-enter v3

    if-nez p2, :cond_2

    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;->mDomainFilterChainsCache:Ljava/util/Map;

    invoke-interface {v4, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;->mDomainFilterChainsCache:Ljava/util/Map;

    invoke-interface {v4, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;->mDomainFilterChainsCache:Ljava/util/Map;

    invoke-interface {v4, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    monitor-exit v3

    return v1

    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

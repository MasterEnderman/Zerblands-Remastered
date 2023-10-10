#norun

import crafttweaker.block.IBlock;
import crafttweaker.block.IBlockState;
import crafttweaker.chat.IChatMessage;
import crafttweaker.command.ICommandSender;
import crafttweaker.damage.IDamageSource;
import crafttweaker.data.IData;
import crafttweaker.entity.IEntityLivingBase;
import crafttweaker.event.IPlayerEvent;
import crafttweaker.event.PlayerLoggedInEvent;
import crafttweaker.event.PlayerRespawnEvent;
import crafttweaker.event.PlayerTickEvent;
import crafttweaker.player.IPlayer;
import crafttweaker.potions.IPotionEffect;
import crafttweaker.server.IServer;
import crafttweaker.text.ITextComponent;
import crafttweaker.util.Position3f;
import crafttweaker.world.IBlockPos;
import crafttweaker.world.IFacing;

events.onPlayerLoggedIn(function (event as PlayerLoggedInEvent) {
    var player as IPlayer = event.player;

    server.commandManager.executeCommand(server, "/rescan");
});

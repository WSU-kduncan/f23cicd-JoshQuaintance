<script lang="ts">
    import Clock from '$components/Clock.svelte';
    import CounterButton from '$components/CounterButton.svelte';
    import { goto } from '$app/navigation';
</script>

<svelte:head>
    <title>SvelteKit Template</title>
</svelte:head>

<div class="container">
    <span class="text-9xl font-bold mb-10" id="techStack">
        Hello <br />
        <a href="https://kit.svelte.dev" target="_blank" rel="noreferrer">
            <span id="sveltekit" class="bg-clip-text bg-gradient-to-r text-transparent">SvelteKit</span>
        </a>

        <br />

        <a href="https://tailwindcss.com" target="_blank" rel="noreferrer">
            <span id="tailwind" class="bg-clip-text bg-gradient-to-r text-transparent">Tailwind</span>
        </a>!
    </span>

    <CounterButton />

    <Clock />

    <button on:click={() => goto('/about')}><span>About</span></button>
</div>

<style lang="postcss">
    div.container {
        @apply flex flex-col justify-around items-center;
        @apply dark:bg-gray-900 dark:text-white;
        @apply leading-loose h-screen pb-24;
    }

    #sveltekit {
        @apply cursor-pointer;
        @apply from-[#FE5858] via-[#FC9842] to-[#eb9927];
    }

    #tailwind {
        @apply cursor-pointer;
        @apply from-green-400 via-blue-500 to-indigo-500;
    }

    button {
        @apply relative inline-flex items-center justify-center overflow-hidden;
        @apply p-0.5 mb-2 mr-2 mt-5;
        @apply text-sm font-medium text-gray-900 rounded-lg;
        @apply bg-gradient-to-br from-purple-500 to-pink-500;
        @apply hover:text-white focus:ring-4 focus:ring-purple-200;
        @apply group-hover:from-purple-500 group-hover:to-pink-500;
        @apply dark:text-white dark:focus:ring-purple-800 outline-none;
    }
    span {
        @apply relative;
        @apply px-5 py-2.5;
        @apply transition-all ease-in duration-75;
        @apply bg-white dark:bg-gray-900 rounded-md group-hover:bg-opacity-0;
    }
</style>
